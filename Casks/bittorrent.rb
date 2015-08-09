cask :v1 => 'bittorrent' do
  version :latest
  sha256 :no_check

  url 'http://download-new.utorrent.com/os/osx/track/stable/endpoint/btmac'
  name 'BitTorrent'
  homepage 'http://www.bittorrent.com'
  license :freemium

  installer :manual => 'Bittorrent.app'
  uninstall :trash =>
    [
      '/Applications/BitTorrent.app',
    ]
  zap :trash =>
    [
      '~/Library/Preferences/com.com.bittorrent.BitTorrent.plist',
      '~/Library/Application Support/BitTorrent',
      '~/Library/Saved Application State/com.com.bittorrent.BitTorrent.savedState',
      '~/Library/Caches/com.com.bittorrent.BitTorrent',
      '~/Library/LaunchAgents/com.bittorrent.BitTorrent.plist'
    ]
end
