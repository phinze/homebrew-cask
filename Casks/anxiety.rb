cask 'anxiety' do
  version '1.0'
  sha256 'dba5afb10069592fbef623b2ddd53009da84dbf9bb3fd6720e849c304282e708'

  url "http://www.anxietyapp.com/downloads/Anxiety_#{version}.zip"
  appcast 'http://www.anxietyapp.com/appcast/appcast.xml',
          :sha256 => '69337f339275de76a281eb173ea418aaaf0d812c6e3ac448805028e1735bc756'
  name 'Anxiety'
  homepage 'http://www.anxietyapp.com/'
  license :gratis

  app 'Anxiety.app'
end
