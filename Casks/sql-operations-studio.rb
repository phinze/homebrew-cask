cask 'sql-operations-studio' do
  version '0.29.3'
  sha256 '4d5cb335a8745d92f074a0349dc6c5718bfa44e64078e1badced9f53ae47dd79'

  # github.com/Microsoft/sqlopsstudio was verified as official when first introduced to the cask
  url "https://github.com/Microsoft/sqlopsstudio/releases/download/#{version}/sqlops-macos-#{version}.zip"
  appcast 'https://sqlops-update.azurewebsites.net/api/update/darwin/stable/VERSION'
  name 'SQL Operations Studio'
  homepage 'https://docs.microsoft.com/sql/sql-operations-studio/'

  auto_updates true

  app 'SQL Operations Studio.app'
  binary "#{appdir}/SQL Operations Studio.app/Contents/Resources/app/bin/code", target: 'sqlops'

  zap trash: [
               '~/Library/Application Support/sqlops',
               '~/Library/Preferences/com.sqlopsstudio.oss.helper.plist',
               '~/Library/Preferences/com.sqlopsstudio.oss.plist',
               '~/Library/Saved Application State/com.sqlopsstudio.oss.savedState',
             ]
end
