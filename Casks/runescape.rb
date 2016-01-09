cask 'runescape' do
  version :latest
  sha256 :no_check

  url 'http://www.runescape.com/downloads/runescape.dmg'
  name 'RuneScape'
  homepage 'https://www.runescape.com'
  license :closed

  app 'RuneScape.app'
end
