cask 'brushviewql' do
  version '1.1'
  sha256 '5211b8b62a8d03a9859c96ebba94fa3262e633a3f7420a1972eaa1ab37b1347f'

  url 'http://brushviewer.sourceforge.net/brushviewql.zip'
  appcast 'http://brushviewer.sourceforge.net/',
          checkpoint: '305de94640877ce5fc4713887eb11ebeda915991919b941e27eabf145e2521c9'
  name 'BrushViewQL'
  homepage 'http://brushviewer.sourceforge.net/'

  qlplugin 'BrushViewQL/BrushViewQL.qlgenerator'
end
