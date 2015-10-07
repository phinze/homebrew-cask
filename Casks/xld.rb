cask :v1 => 'xld' do
  version '20141129a'
  sha256 '2bf53dc840b0b037921e1ccc3b4b3244ff1a84f306c3ce749ec9da39f220b6d0'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/xld/xld-#{version}.dmg"
  appcast 'https://svn.code.sf.net/p/xld/code/appcast/xld-appcast_e.xml',
          :sha256 => '512cb719f23a795cb88af4c700b9468fac1ade45e7e78964fb7d0cfea411a077'
  name 'X Lossless Decoder'
  name 'XLD'
  homepage 'http://tmkk.undo.jp/xld/index_e.html'
  license :oss

  app 'XLD.app'

  zap :delete => [
                  '~/Library/Application Support/XLD',
                  '~/Library/Preferences/jp.tmkk.XLD.plist',
                 ]
end
