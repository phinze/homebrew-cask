cask 'microsoft-edge' do
  version '83.0.478.56'
  sha256 'ff2d854c62ce3c9527970404550c66d605fe37a407694b811c5d4c040fdf3b16'

  # officecdn-microsoft-com.akamaized.net/ was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/MicrosoftEdge-#{version}.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://go.microsoft.com/fwlink/?linkid=2069148'
  name 'Microsoft Edge'
  homepage 'https://www.microsoft.com/edge'

  auto_updates true

  pkg "MicrosoftEdge-#{version}.pkg"

  uninstall pkgutil: 'com.microsoft.edgemac',
            rmdir:   '/Library/Application Support/Microsoft'

  zap launchctl: [
                   'com.microsoft.autoupdate.helper',
                   'com.microsoft.update.agent',
                 ],
      pkgutil:   'com.microsoft.package.Microsoft_AutoUpdate.app',
      delete:    '/Library/PrivilegedHelperTools/com.microsoft.autoupdate.helper',
      trash:     [
                   '/Library/Application Support/Microsoft',
                   '~/Library/Application Support/Microsoft Edge',
                   '~/Library/Caches/Microsoft Edge',
                   '~/Library/Preferences/com.microsoft.edgemac.plist',
                   '~/Library/Saved Application State/com.microsoft.edgemac.savedState',
                 ]
end
