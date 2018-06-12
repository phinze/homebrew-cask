cask 'audioslicer' do
  version '1.1.1'
  sha256 'c0ef4d9b1690943def00ce4c7bb2838ff08cfe0d3ff85d39ca1e4ddc97593d01'

  url "https://downloads.sourceforge.net/audioslicer/AudioSlicer/#{version}/AudioSlicer-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/audioslicer/rss?path=/AudioSlicer'
  name 'AudioSlicer'
  homepage 'http://audioslicer.sourceforge.net/'

  app 'AudioSlicer.app'
end
