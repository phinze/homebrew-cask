cask 'nomachine' do
  version '6.1.6_10'
  sha256 '7b7b0096364ee00b7b89156242997b58ac636bf3022e7c419e4f493963b26775'

  url "http://download.nomachine.com/download/#{version.major_minor}/MacOSX/nomachine_#{version}.dmg"
  name 'NoMachine'
  homepage 'https://www.nomachine.com/'

  pkg 'NoMachine.pkg'

  # A launchctl job ordinarily manages uninstall once the app bundle is removed
  uninstall delete: '/Applications/NoMachine.app',
  # However, we duplicate the uninstall process manually just in case
            script: '/Library/Application Support/NoMachine/nxuninstall.sh',
            quit:         'com.nomachine.nxdock',
            kext:         [
                            'com.nomachine.driver.nxau',
                            'com.nomachine.driver.nxtun',
                            'com.nomachine.kext.nxfs',
                          ],
            pkgutil:      'com.nomachine.nomachine.NoMachine.*',
            launchctl:    'com.nomachine.uninstall'
end
