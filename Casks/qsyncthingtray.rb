cask 'qsyncthingtray' do
  version '0.2.7'
  sha256 'b006a0d723560a953e27f5096084d1a57602241e1b60679892b0e65bed261dba'

  url "https://github.com/sieren/QSyncthingTray/releases/download/#{version}/QSyncthingTray_OSX.dmg"
  appcast 'https://github.com/sieren/QSyncthingTray/releases.atom'
  name 'QSyncthingTray'
  homepage 'https://github.com/sieren/QSyncthingTray'
  license :gpl

  depends_on :formula => 'syncthing'

  app 'QSyncthingTray.app'

  uninstall :quit => 'QSyncthingTray'

  zap :delete => '~/Library/Preferences/com.sieren.QSyncthingTray.plist'
end
