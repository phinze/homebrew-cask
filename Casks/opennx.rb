cask 'opennx' do
  version '0.16.0.729'
  sha256 '65dde1a3504a17ac58ed2a7178536347d829ee8c27cc90bebdae3e98c36fc6c6'

  # downloads.sourceforge.net/sourceforge/opennx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sourceforge/opennx/OpenNX-#{version}.dmg"
  name 'OpenNX'
  homepage 'http://opennx.net/'
  license :gpl

  pkg 'OpenNX.pkg'

  uninstall script:  { executable: '/Library/OpenNX/bin/macuninstall', args: ['--batch'] },
            pkgutil: 'org.opennx.OpenNX'
end
