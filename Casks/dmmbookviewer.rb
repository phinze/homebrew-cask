cask 'dmmbookviewer' do
  version '2.0.4'
  sha256 'ac794dc71761a8a891dc237c11665866cfe76f7bcce68c20f7afb24a1a4a39b9'

  url "http://dl.aka.dmm.co.jp/dmmviewer/mac/DMMViewerSetup_Mac_#{version}.pkg"
  name 'DMMbookviewer'
  homepage 'http://book.dmm.com/info_bookviewer.html'
  license :gratis

  pkg "DMMViewerSetup_Mac_#{version}.pkg"

  uninstall pkgutil: 'jp.co.cyphertec.installer.app.ImageViewer'
end
