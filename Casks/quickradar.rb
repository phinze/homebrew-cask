cask 'quickradar' do
  version '1.1'
  sha256 'e05187416098f4312b94f34bc1c39a8a87ab96f9af0bc0d107283c032fbdb079'

  url 'http://www.quickradar.com/1.1.zip'
  appcast 'http://www.quickradar.com/appcast.xml', checkpoint: '92f1b4a517c2c8813d23d40cdb8ba158d4858cc1c1c04a120caf2ca6900f6121'
  name 'QuickRadar'
  homepage 'http://www.quickradar.com/'

  app 'QuickRadar.app'
end
