cask 'slack' do
  version '2.6.2'
  sha256 '528b7f5b874b0f15d31e232ad4b352fbd68d26930a832223a492ba0fb49c3b6a'

  # downloads.slack-edge.com was verified as official when first introduced to the cask
  url "https://downloads.slack-edge.com/mac_releases/Slack-#{version}-macOS.zip"
  name 'Slack'
  homepage 'https://slack.com/'

  auto_updates true

  app 'Slack.app'

  uninstall quit: 'com.tinyspeck.slackmacgap'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tinyspeck.slackmacgap.sfl',
                '~/Library/Application Support/Slack',
                '~/Library/Caches/com.tinyspeck.slackmacgap',
                '~/Library/Caches/com.tinyspeck.slackmacgap.ShipIt',
                '~/Library/Containers/com.tinyspeck.slackmacgap',
                '~/Library/Containers/com.tinyspeck.slackmacgap.SlackCallsService',
                '~/Library/Cookies/com.tinyspeck.slackmacgap.binarycookies',
                '~/Library/Preferences/com.tinyspeck.slackmacgap.plist',
                '~/Library/Preferences/com.tinyspeck.slackmacgap.helper.plist',
                '~/Library/Saved Application State/com.tinyspeck.slackmacgap.savedState',
              ]
end
