cask 'slack' do
  version '3.4.2'
  sha256 '26787207e00acf7c6677f1b09bfc475846c63d9cd9702fada2f9356567a1ebc5'

  # downloads.slack-edge.com was verified as official when first introduced to the cask
  url "https://downloads.slack-edge.com/mac_releases/Slack-#{version}-macOS.zip"
  name 'Slack'
  homepage 'https://slack.com/'

  auto_updates true

  app 'Slack.app'

  uninstall quit: 'com.tinyspeck.slackmacgap'

  zap trash: [
               '~/Library/Application Scripts/com.tinyspeck.slackmacgap',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tinyspeck.slackmacgap.sfl*',
               '~/Library/Application Support/Slack',
               '~/Library/Caches/com.tinyspeck.slackmacgap',
               '~/Library/Caches/com.tinyspeck.slackmacgap.ShipIt',
               '~/Library/Containers/com.tinyspeck.slackmacgap',
               '~/Library/Containers/com.tinyspeck.slackmacgap.SlackCallsService',
               '~/Library/Cookies/com.tinyspeck.slackmacgap.binarycookies',
               '~/Library/Group Containers/*.com.tinyspeck.slackmacgap',
               '~/Library/Group Containers/*.slack',
               '~/Library/Preferences/com.tinyspeck.slackmacgap.helper.plist',
               '~/Library/Preferences/com.tinyspeck.slackmacgap.plist',
               '~/Library/Saved Application State/com.tinyspeck.slackmacgap.savedState',
             ]
end
