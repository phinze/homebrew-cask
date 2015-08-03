cask v1: 'kensington-trackball-works' do
  version '1.2.1'
  sha256 '285511269aea2e0517198b354923676655c72142062dcba7bdc41bc29d1f08d1'

  # windows.net is the official download host per the vendor homepage
  url 'http://accoblobstorageus.blob.core.windows.net/software/926df442-8736-45a1-85f2-435a67723bb0.dmg'
  name 'Kensington TrackballWorks'
  homepage 'http://www.kensington.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Kensington TrackballWorks.pkg'

  uninstall pkgutil: 'com.kensington.trackballworks.driver.installer',
            kext: 'com.kensington.trackballworks.driver',
            launchctl: [
                           'com.kensington.slimblade.agent',
                           'com.kensington.slimblade.guiagent.plist',
                          ],
            quit: 'com.kensington.trackballworks.helper'
end
