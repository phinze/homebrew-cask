cask '5kplayer' do
  version '5.8.0'
  sha256 '630cd2b66dad928c60b885e6f86c1359670147ddb999086094860edd50dc541b'

  url 'https://www.5kplayer.com/download/5kplayer.dmg'
  appcast 'https://www.5kplayer.com/upgrade/mac/updatecast.xml'
  name '5KPlayer'
  homepage 'https://www.5kplayer.com/'

  app '5KPlayer.app'

  uninstall quit: 'com.digiarty.5kplayer'

  zap trash: [
               '~/Library/Caches/com.digiarty.5kplayer',
               '~/Library/Preferences/com.digiarty.5kplayer.plist',
               '~/Library/Saved Application State/com.digiarty.5kplayer.savedState',
             ]
end
