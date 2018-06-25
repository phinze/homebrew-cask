cask 'camed' do
  version '3.2.2'
  sha256 '407e101a3a47566395606b03114388f94f48b488d3fa27041aecb937eb43bd12'

  url "https://downloads.sourceforge.net/camprocessor/CAMEd-#{version}-macosx-cocoa-x86_64.tar.gz"
  appcast 'https://sourceforge.net/projects/camprocessor/rss'
  name 'CAM Editor'
  homepage 'http://camprocessor.sourceforge.net/'

  app "CAMEd-#{version}/CAMed.app"
end
