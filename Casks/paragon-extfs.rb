cask 'paragon-extfs' do
  version '11'
  sha256 '3e000e689433e95087b054e1d3ad8ddb79171c2db2d4e000ac3b05b6b056d9f5'

  url "http://dl.paragon-software.com/demo/trial_extfs#{version}.dmg"
  name 'Paragon ExtFS'
  homepage 'https://www.paragon-software.com/home/extfs-mac/'

  pkg 'FSInstaller.app/Contents/MacOS/FSInstaller'

  uninstall pkgutil:   'Uninstall.app/Contents/MacOS/uninstaller',
            script:    '',
            launchctl: [
                         'com.paragon.extfs*',
                         'com.paragon.updater',
                       ]
end
