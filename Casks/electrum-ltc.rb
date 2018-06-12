cask 'electrum-ltc' do
  version '3.1.3.1'
  sha256 '93f7a6cc9e512bd644e0bc4242df95ae86009fba2201e1f8aaf92e14a885c458'

  url "https://electrum-ltc.org/download/electrum-ltc-#{version}.dmg"
  appcast 'https://electrum-ltc.org/'
  name 'Electrum-LTC'
  homepage 'https://electrum-ltc.org/'
  gpg "#{url}.asc", key_id: 'CAE1092AD3553FFD21C05DE36FC4C9F7F1BE8FEA'

  app 'Electrum-LTC.app'
end
