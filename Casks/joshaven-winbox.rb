cask 'joshaven-winbox' do
  version '3.11'
  sha256 'a2fc14d3eec133df7638f1e0697bacc7a80a5dbf90ea80be935512f9ed673d6d'

  url "http://joshaven.com/Winbox4Mac_#{version}.dmg"
  appcast 'http://joshaven.com/resources/tools/winbox-for-mac/'
  name 'Winbox4Mac'
  homepage 'http://joshaven.com/resources/tools/winbox-for-mac/'

  app 'Winbox4Mac.app'

  zap trash: '~/Library/Preferences/WinBox*Wine.wineskin.prefs.plist'
end
