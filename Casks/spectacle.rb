cask 'spectacle' do
  version '1.2'
  sha256 '766d5bf3b404ec567110a25de1d221290bc829302283b28ed0fbe73b9557f30c'

  # amazonaws.com/spectacle was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/spectacle/downloads/Spectacle+#{version}.zip"
  appcast 'https://www.spectacleapp.com/updates/appcast.xml'
  name 'Spectacle'
  homepage 'https://www.spectacleapp.com/'

  auto_updates true

  app 'Spectacle.app'

  uninstall login_item: 'Spectacle'

  zap trash: [
               '~/Library/Application Support/Spectacle',
               '~/Library/Caches/com.divisiblebyzero.Spectacle',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.divisiblebyzero.Spectacle',
               '~/Library/Cookies/com.divisiblebyzero.Spectacle.binarycookies',
               '~/Library/Preferences/com.divisiblebyzero.Spectacle.plist',
             ]
end
