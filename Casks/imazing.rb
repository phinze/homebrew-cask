cask 'imazing' do
  version '2.2.4'
  sha256 '516280f766eaa9e947ae0a60f9c7fbab5da7898c04a62b88cdcf15ac44e074b3'

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.DigiDNA.iMazing#{version.major}Mac/iMazing#{version.major}forMac.dmg"
  name 'iMazing'
  homepage 'https://imazing.com/'

  depends_on macos: '>= :lion'

  app 'iMazing.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.digidna.imazingmac.sfl',
                '~/Library/Application Support/iMazing',
                '~/Library/Caches/com.DigiDNA.iMazingMac',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazingMac',
                '~/Library/Caches/iMazing',
                '~/Library/Preferences/com.DigiDNA.iMazingMac.plist',
              ]
end
