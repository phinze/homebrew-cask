cask 'watchguard-mobile-vpn-with-ssl' do
  version '11.11.0'
  sha256 '9908e4ef7f758c0be8d9ef5ac167e6bfa2a5b44ffbc07aa5db36ba7bdb6f5089'

  url 'http://cdn.watchguard.com/SoftwareCenter/Files/MUVPN_SSL/11_11/WG-MVPN-SSL_11_11.dmg'
  name 'WatchGuard Mobile VPN with SSL'
  homepage 'https://www.watchguard.com/'

  pkg 'WatchGuard Mobile VPN with SSL Installer V495947.mpkg'

  uninstall pkgutil: 'com.watchguard.*'
end
