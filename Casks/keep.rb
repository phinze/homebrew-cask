cask 'keep' do
  version '1.2.0'
  sha256 'e5753208da6a1ae9a401e34389fa4cf71080647986981cbe389eed40ba86e9d5'

  url "https://github.com/tmcinerney/keep/releases/download/v#{version}/keep.v#{version}.zip"
  appcast 'https://github.com/tmcinerney/keep/releases.atom',
          checkpoint: '5684ce7a304df84d34b1c7e7c78b123f87df1fd9f60dc132ba995c7671fb60eb'
  name 'Keep'
  homepage 'https://github.com/tmcinerney/keep/'

  app 'Keep.app'

  uninstall signal: [
                      ['TERM', 'com.electron.keep'],
                      ['TERM', 'com.electron.keep.helper'],
                    ]

  zap trash: [
               '~/Library/Application Support/Keep',
               '~/Library/Caches/com.electron.keep',
               '~/Library/Preferences/com.electron.keep.plist',
               '~/Library/Preferences/com.electron.keep.helper.plist',
               '~/Library/Saved Application State/com.electron.keep.savedState',
             ]
end
