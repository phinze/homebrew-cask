cask 'adguard' do
  version '1.5.3'
  sha256 'de1dc6e957094c9d05a935cb3896273bd8c8379c62e74c19922984d8f5c05a3d'

  url "https://static.adguard.com/mac/Adguard-#{version}.release.dmg"
  appcast 'https://static.adguard.com/mac/adguard-release-appcast.xml',
          checkpoint: 'd28a9e7c564cec267107c5a384e3c203fbc7191c11d50b12787eaafc063a47b2'
  name 'Adguard for Mac'
  homepage 'https://adguard.com/'

  app 'Adguard.app'

  zap trash: [
               '/Library/Application Support/com.adguard.Adguard',
               '~/Library/Application Support/Adguard',
               '~/Library/Application Support/com.adguard.Adguard',
               '~/Library/Caches/com.adguard.Adguard',
               '~/Library/Cookies/com.adguard.Adguard.binarycookies',
               '~/Library/Logs/Adguard',
               '~/Library/Preferences/com.adguard.Adguard.plist',
             ]
end
