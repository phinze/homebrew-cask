cask :v1 => 'polar-websync' do
  version '2.8.2'
  sha256 '287230ee323cca9887f31e448cbac759c770448e25c31c164b87f69bb3ead9b9'

  url "https://www.polarpersonaltrainer.com/downloads/websync_#{version}.dmg"
  name 'Polar WebSync Software'
  homepage 'http://www.polar.com/us-en/support/downloads/Polar_WebSync_Software'
  license :closed

  pkg 'Polar WebSync.pkg'

  uninstall :pkgutil => 'fi.polar.websync.pkg',
            :quit => 'fi.polar.WebSync',
            :delete => '/Applications/WebSync.app'
end
