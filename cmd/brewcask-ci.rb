# frozen_string_literal: false

require "utils/github"
require "utils/formatter"

require_relative "lib/capture"
require_relative "lib/check"
require_relative "lib/travis"

module Cask
  class Cmd
    class Ci < AbstractCommand
      def run
        unless ENV.key?("CI")
          raise CaskError, "This command isn’t meant to be run locally."
        end

        $stdout.sync = true
        $stderr.sync = true

        unless tap
          raise CaskError, "This command must be run from inside a tap directory."
        end

        current_commit_hash = system_command!(
          "git", args: ["rev-parse", "--short", "HEAD"]
        ).stdout.strip

        pr_url =
          if ENV.key?("HOMEBREW_AZURE_REPOSITORY_URI") && ENV.key?("HOMEBREW_AZURE_PULLREQUESTNUMBER")
            # Use Azure Pipeline variables for pull request jobs.
            "#{ENV["HOMEBREW_AZURE_REPOSITORY_URI"]}/pull/#{ENV["HOMEBREW_AZURE_PULLREQUESTNUMBER"]}"
          else
            nil
          end

        @commit_range =
          if ENV.key?("TRAVIS_COMMIT_RANGE")
            # Use Travis CI Git variables for master or branch jobs.
            ENV["TRAVIS_COMMIT_RANGE"]
          elsif pr_url
            # Use PR URL
            system_command!("brew", args: ["pull", "--clean", pr_url])
            pr_commit_hash = system_command!(
              "git", args: ["rev-parse", "--short", "HEAD"]
            ).stdout.strip
            "#{current_commit_hash}...#{pr_commit_hash}"
          elsif ENV.key?("HOMEBREW_AZURE_TARGETBRANCH") && ENV.key?("HOMEBREW_AZURE_SOURCEVERSION")
            # Use Azure Pipeline variables for master or branch jobs.
            start_commit_hash = system_command!(
              "git", args: ["rev-parse", "--short", ENV["HOMEBREW_AZURE_TARGETBRANCH"]]
            ).stdout.strip
            "#{start_commit_hash}...#{current_commit_hash}"
          else
            # Otherwise just use the current hash.
            "#{current_commit_hash}...#{current_commit_hash}"
          end
        puts "DEBUG: HOMEBREW_AZURE_TARGETBRANCH is #{ENV["HOMEBREW_AZURE_TARGETBRANCH"]}"
        puts "DEBUG: HOMEBREW_AZURE_SOURCEVERSION is #{ENV["HOMEBREW_AZURE_SOURCEVERSION"]}"
        puts "DEBUG: @commit_range is #{@commit_range}"

        ruby_files_in_wrong_directory = modified_ruby_files - (modified_cask_files + modified_command_files)

        unless ruby_files_in_wrong_directory.empty?
          raise CaskError, "Casks are in the wrong directory:\n" +
                           ruby_files_in_wrong_directory.join("\n")
        end

        if modified_cask_files.count > 1 && tap.name != "homebrew/cask-fonts"
          raise CaskError, "More than one cask modified; please submit a pull request for each cask separately."
        end

        overall_success = true

        modified_cask_files.each do |path|
          cask = CaskLoader.load(path)

          overall_success &= step "brew cask audit #{cask.token}", "audit" do
            Auditor.audit(cask, audit_download: true,
                                check_token_conflicts: added_cask_files.include?(path),
                                commit_range: @commit_range)
          end

          overall_success &= step "brew cask style #{cask.token}", "style" do
            Style.run(path)
          end

          was_installed = cask.installed?
          cask_dependencies = CaskDependencies.new(cask).reject(&:installed?)

          check = Check.new

          overall_success &= step "brew cask install #{cask.token}", "install" do
            Installer.new(cask, force: true).uninstall if was_installed

            check.before

            Installer.new(cask, verbose: true).install
          end

          overall_success &= step "brew cask uninstall #{cask.token}", "uninstall" do
            success = begin
              Installer.new(cask, verbose: true).uninstall
              true
            rescue => e
              $stderr.puts e.message
              $stderr.puts e.backtrace
              false
            ensure
              cask_dependencies.each do |c|
                Installer.new(c, verbose: true).uninstall if c.installed?
              end
            end

            check.after

            $stderr.puts check.message unless check.success?

            success && check.success?
          end
        end

        if overall_success
          puts Formatter.success("Build finished successfully.", label: "Success")
          return
        end

        raise CaskError, "Build failed."
      end

      private

      def step(name, travis_id)
        success = false
        output = nil

        Travis.fold travis_id do
          print Formatter.headline("#{name} ", color: :yellow)

          real_stdout = $stdout.dup

          travis_wait = Thread.new do
            loop do
              sleep 595
              real_stdout.print "\u200b"
            end
          end

          success, output = capture do
            begin
              yield != false
            rescue => e
              $stderr.puts e.message
              false
            end
          end

          travis_wait.kill
          travis_wait.join

          if success
            puts Formatter.success("✔")
            puts output unless output.empty?
          else
            puts Formatter.error("✘")
          end
        end

        puts output unless success

        success
      end

      def tap
        @tap ||= if ENV.key?("TRAVIS_REPO_SLUG")
          Tap.fetch(ENV["TRAVIS_REPO_SLUG"])
        else
          Tap.from_path(Dir.pwd)
        end
      end

      def modified_files
        @modified_files ||= system_command!(
          "git", args: ["diff", "--name-only", "--diff-filter=AMR", @commit_range]
        ).stdout.split("\n").map { |path| Pathname(path) }
      end

      def added_files
        @added_files ||= system_command!(
          "git", args: ["diff", "--name-only", "--diff-filter=A", @commit_range]
        ).stdout.split("\n").map { |path| Pathname(path) }
      end

      def modified_ruby_files
        @modified_ruby_files ||= modified_files.select { |path| path.extname == ".rb" }
      end

      def modified_command_files
        @modified_command_files ||= modified_files.select { |path| tap.command_file?(path) || path.ascend.to_a.last.to_s == "cmd" }
      end

      def modified_cask_files
        @modified_cask_files ||= modified_files.select { |path| tap.cask_file?(path) }
      end

      def added_cask_files
        @added_cask_files ||= added_files.select { |path| tap.cask_file?(path) }
      end
    end
  end
end
