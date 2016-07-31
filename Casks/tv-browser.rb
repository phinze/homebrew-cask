cask 'tv-browser' do
  version '3.4.4'
  sha256 '53128cbebb2432ca254893453ea4f13fb16abdaf74d7d66355588d523162a086'

  # sourceforge.net/tvbrowser was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/tvbrowser/tvbrowser_#{version}_macjava.dmg"
  name 'TV-Browser'
  homepage 'http://www.tvbrowser.org/'
  license :gpl

  app 'TV-Browser.app'
end
