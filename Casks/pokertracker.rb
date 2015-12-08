cask :v1 => 'pokertracker' do
  version '4.14.7'
  sha256 'e112d03806915ae737cc3c3ba035ec17149f742cf4e45946033af181e156de94'

  url "http://s3-us1.ptrackupdate.com/releases/PT-Install-v#{version}.dmg"
  name 'PokerTracker'
  homepage 'https://www.pokertracker.com'
  license :commercial

  app 'PokerTracker 4.app'
end
