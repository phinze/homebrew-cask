cask 'tunnelbear' do
  version '3.6.0'
  sha256 '35d18deb3f25d4c9787c0df8601e37edff5e921325d6c099a800c9225199c853'

  # s3.amazonaws.com/tunnelbear was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tunnelbear/downloads/mac/TunnelBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/tunnelbear/downloads/mac/appcast.xml'
  name 'TunnelBear'
  homepage 'https://www.tunnelbear.com/'

  app 'TunnelBear.app'

  uninstall quit:      'com.tunnelbear.mac.TunnelBear',
            launchctl: 'com.tunnelbear.mac.tbeard'

  zap trash: [
               '~/Library/Preferences/com.tunnelbear.mac.TunnelBear.plist',
               '~/Library/Caches/com.tunnelbear.mac.TunnelBear',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tunnelbear.mac.tunnelbear.sfl*',
               '~/Library/Application Support/com.tunnelbear.mac.TunnelBear',
               '~/Library/Application Support/TunnelBear',
               '~/Library/Caches/com.crashlytics.data/com.tunnelbear.mac.TunnelBear',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.tunnelbear.mac.TunnelBear',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.tunnelbear.mac.TunnelBear',
               '~/Library/Cookies/com.tunnelbear.mac.TunnelBear.binarycookies',
               '~/Library/LaunchAgents/com.tunnelbear.mac.tbeara.plist',
               '~/Library/Logs/TunnelBear',
             ]
end
