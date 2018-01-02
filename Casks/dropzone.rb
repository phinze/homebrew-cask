cask 'dropzone' do
  version '3.6.5'
  sha256 '2807a2b1d963b6a93f95a05839e962b39809e78d8319951d434f2e5799a1e5df'

  url "https://aptonic.com/dropzone3/sparkle/Dropzone-#{version}.zip"
  appcast 'https://aptonic.com/sparkle/updates.xml',
          checkpoint: '36c621138ad2cd6703eb16d508f73fcf08e4610c6e84fa022014978bbb51a593'
  name 'Dropzone'
  homepage 'https://aptonic.com/'

  app "Dropzone #{version.major}.app"

  zap trash: [
               '~/Library/Application Scripts/com.aptonic.Dropzone3',
               '~/Library/Application Scripts/com.aptonic.LaunchAtLogin',
               '~/Library/Application Support/Dropzone 3',
               '~/Library/Caches/com.aptonic.Dropzone3',
               '~/Library/Containers/com.aptonic.Dropzone3',
               '~/Library/Containers/com.aptonic.LaunchAtLogin',
               '~/Library/Preferences/com.aptonic.Dropzone3.plist',
               '~/Library/Saved Application State/com.aptonic.Dropzone3.savedState',
             ]
end
