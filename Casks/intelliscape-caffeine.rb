cask 'intelliscape-caffeine' do
  version '1.1.3'
  sha256 '240e5ab832a25ed0af43aeffd1d66dc663dfea7c2525d918c214d6107981a03b'

  # https://github.com/IntelliScape/caffeine/releases/download/1.1.3/Caffeine.dmg was verified as official when first introduced to the cask
  url 'https://github.com/IntelliScape/caffeine/releases/download/1.1.3/Caffeine.dmg'
  appcast 'https://intelliscapesolutions.com/apps/caffeine/releasenotes'
  name 'Caffeine'
  homepage 'https://intelliscapesolutions.com/apps/caffeine'

  conflicts_with cask: 'caffeine'

  app 'Caffeine.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lightheadsw.caffeine.sfl*',
               '~/Library/Preferences/com.lightheadsw.Caffeine.plist',
             ]
end
