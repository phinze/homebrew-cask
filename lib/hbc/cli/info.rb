require 'json'

class Hbc::CLI::Info < Hbc::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise Hbc::CaskUnspecifiedError if cask_tokens.empty?
    if args.include?('--machine-readable')
      machine_readable_info(cask_tokens)
    else
      human_readable_info(cask_tokens)
    end
  end

  def self.help
    "displays information about the given Cask"
  end

  def self.human_readable_info(cask_tokens)
    cask_tokens.each do |cask_token|
      odebug "Getting info for Cask #{cask_token}"
      cask = Hbc.load(cask_token)
      puts info(cask)
      Hbc::Installer.print_caveats(cask)
    end
  end

  def self.machine_readable_info(cask_tokens)
    cask_tokens.each do |cask_token|
      cask = Hbc.load(cask_token)
      puts JSON.pretty_generate(
        name: cask.to_s,
        full_name: formatted_full_name(cask),
        installed: cask.installed?,
        homepage: cask.homepage,
        github_url: github_url(cask),
        requires_sudo: cask.requires_sudo?,
      )
    end
  end

  def self.info(cask)
    installation = if cask.installed?
                     "#{cask.staged_path} (#{Hbc::Utils.cabv(cask.staged_path)})"
                   else
                     "Not installed"
                   end
    # todo completely reformat the info report
    <<-PURPOSE
#{cask}: #{cask.version}
#{formatted_full_name(cask) }
#{cask.homepage or 'No Homepage'}
#{installation}
#{github_url(cask) or 'No GitHub URL'}
#{requires_sudo(cask)}
#{artifact_info(cask) or 'No Artifact Info'}
PURPOSE
  end


  def self.formatted_full_name(cask)
    # todo transitional: make name a required stanza, and then stop substituting cask.token here
    cask.full_name.empty? ? cask.token : cask.full_name.join(', ')
  end

  def self.github_url(cask)
    cask_token = cask.token
    cask_token = cask.class.all_tokens.detect { |t| t.split("/").last == cask_token } unless cask_token =~ /\//
    return nil unless cask_token.respond_to?(:length) and cask_token.length > 0
    path_elements = cask_token.split '/'
    if path_elements.count == 2
      # eg caskroom-cask/google-chrome.
      # Not certain this form is needed, but it was supported in the past.
      token = path_elements[1]
      dash_elements = path_elements[0].split('-')
      repo = dash_elements.pop
      dash_elements.pop if dash_elements.count > 1 and dash_elements[-1] + '-' == repo_prefix
      user = dash_elements.join('-')
    else
      user, repo, token = path_elements
    end
    repo.sub!(/^homebrew-/i, '')
    "https://github.com/#{user}/homebrew-#{repo}/blob/master/Casks/#{token}.rb"
  end

  def self.artifact_info(cask)
    retval = ''
    Hbc::DSL::ClassMethods.ordinary_artifact_types.each do |type|
      if cask.artifacts[type].length > 0
        retval = heading("Contents") unless retval.length > 0
        cask.artifacts[type].each do |artifact|
          activatable_item = type == :stage_only ? '<none>' : artifact.first
          retval.concat "  #{activatable_item} (#{type.to_s})\n"
        end
      end
    end
    retval.sub!(/\n\Z/, '')
  end

  def self.requires_sudo(cask)
    heading("Needs sudo to install?") + cask.requires_sudo?.to_s
  end

  def self.heading(message)
    "#{Tty.blue.bold}==>#{Tty.white} #{message}#{Tty.reset}\n"
  end
end
