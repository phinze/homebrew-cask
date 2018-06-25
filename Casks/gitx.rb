cask 'gitx' do
  version '0.7.1'
  sha256 'd28a2cc1a1d0b83908e7b7fa47706c4e4fab3570277b2a7eae0324b1d86a4b87'

  url 'http://frim.frim.nl/GitXStable.app.zip'
  appcast 'http://gitx.frim.nl/Downloads/appcast.xml'
  name 'GitX'
  homepage 'http://gitx.frim.nl/'

  conflicts_with cask: ['laullon-gitx', 'rowanj-gitx']

  app 'GitX.app'
  binary "#{appdir}/GitX.app/Contents/Resources/gitx"

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/nl.frim.gitx.sfl*',
               '~/Library/Caches/nl.frim.GitX',
               '~/Library/Preferences/nl.frim.GitX.plist',
               '~/Library/Saved Application State/nl.frim.GitX.savedState',
             ]
end
