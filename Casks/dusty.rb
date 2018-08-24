cask 'dusty' do
  version '0.7.2'
  sha256 '978010fb197ef84835c430edb0728464dc29f080d6c8f7251451c69aa9607931'

  url "https://github.com/gamechanger/dusty/releases/download/#{version}/dusty.tar.gz"
  appcast 'https://github.com/gamechanger/dusty/releases.atom'
  name 'Dusty'
  homepage 'https://github.com/gamechanger/dusty'

  depends_on cask: 'docker-toolbox'
  container type: :tar

  installer script: {
                      executable: 'brew-install.sh',
                      args:       [staged_path],
                      sudo:       true,
                    }
  binary 'dusty'

  uninstall launchctl: 'com.gamechanger.dusty'

  zap trash: '/etc/dusty'
end
