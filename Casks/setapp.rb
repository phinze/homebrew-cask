cask 'setapp' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/com.setapp.DesktopClient was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.setapp.DesktopClient/Setapp.dmg'
  name 'Setapp'
  homepage 'https://setapp.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Setapp.app'

  uninstall delete: '~/Library/QuickLook/SetappQL.qlgenerator',
            script: {
                      executable: "#{appdir}/Setapp.app/Contents/Resources/SetappUninstaller.app/Contents/Resources/removeSetapp.sh",
                      sudo:       true,
                    }

  zap delete: [
                '~/Library/Application Scripts/com.setapp.DesktopClient.SetappAgent.FinderSyncExt',
                '~/Library/Caches/com.setapp.DesktopClient.SetappAgent',
                '~/Library/Logs/Setapp',
              ]
end
