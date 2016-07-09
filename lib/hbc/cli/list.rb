class Hbc::CLI::List < Hbc::CLI::Base
  def self.run(*arguments)
    @options = {}
    @options[:one] = true if arguments.delete("-1")
    @options[:long] = true if arguments.delete("-l")
    @options[:versions] = true if arguments.delete("--versions")

    retval = arguments.any? ? list_casks(*arguments) : list_installed
    # retval is ternary: true/false/nil
    if retval.nil? && !arguments.any?
      opoo "nothing to list" # special case: avoid exit code
    elsif retval.nil?
      raise Hbc::CaskError, "nothing to list"
    elsif !retval
      raise Hbc::CaskError, "listing incomplete"
    end
  end

  def self.list_casks(*cask_tokens)
    count = 0
    cask_tokens.each do |cask_token|
      odebug "Listing files for Cask #{cask_token}"
      begin
        cask = Hbc.load(cask_token)
        if cask.installed?
          count += 1
          list_artifacts(cask)
          list_files(cask)
        else
          opoo "#{cask} is not installed"
        end
      rescue Hbc::CaskUnavailableError => e
        onoe e
      end
    end
    count == 0 ? nil : count == cask_tokens.length
  end

  def self.list_artifacts(cask)
    artifacts = Hbc::Artifact.for_cask(cask)
    artifacts.each do |artifact|
      summary = artifact.new(cask).summary
      ohai summary[:english_description], summary[:contents] unless summary.empty?
    end
  end

  def self.list_files(cask)
    ohai "Staged content:"
    Hbc::PrettyListing.new(cask).print
  end

  def self.list_installed
    installed_casks = Hbc.installed
    columns = installed_casks.map(&:to_s)
    if @options[:one]
      puts columns
    elsif @options[:versions]
      installed_casks.each { |cask| puts "#{cask} #{cask.versions.reverse.join(', ')}" }
    elsif @options[:long]
      puts Hbc::SystemCommand.run!("/bin/ls", args: ["-l", Hbc.caskroom]).stdout
    else
      puts_columns columns
    end
    columns.empty? ? nil : installed_casks.length == columns.length
  end

  def self.help
    "with no args, lists installed Casks; given installed Casks, lists staged files"
  end
end
