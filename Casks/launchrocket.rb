cask 'launchrocket' do
  version '0.7'
  sha256 '51dc78902fecfb7ec26ab5c6516b84d1c62692349864ef48aca2fde81bd2ef4a'

  url "https://github.com/jimbojsb/launchrocket/releases/download/v#{version}/LaunchRocket.prefPane.zip"
  appcast 'https://github.com/jimbojsb/launchrocket/releases.atom',
          checkpoint: '5b93c61533dac3153ee27bb85b554020ce0a5fe9182249a44cef86b230a755a4'
  name 'LaunchRocket'
  homepage 'https://github.com/jimbojsb/launchrocket'

  prefpane 'LaunchRocket.prefPane'
end
