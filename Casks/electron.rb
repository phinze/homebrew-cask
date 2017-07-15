cask 'electron' do
  version '1.6.11'
  sha256 'f932b3afc059ccaf77ff5239d7e0eb61c472e6e1bd4785164afc06f35ec2545b'

  # github.com/electron/electron was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/electron/electron/releases.atom',
          checkpoint: '88c44c3e2a7685e8e4de582664713edd80fe67cea2980921cad35fbc3e010b41'
  name 'Electron'
  homepage 'https://electron.atom.io/'

  app 'Electron.app'

  zap delete: [
                '~/Library/Application Support/Electron',
                '~/Library/Caches/Electron',
                '~/Library/Preferences/com.github.electron.helper.plist',
                '~/Library/Preferences/com.github.electron.plist',
              ]
end
