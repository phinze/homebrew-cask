cask 'keymo' do
  version '1.2.1'
  sha256 '6ae33f5287e8be279c87f0bb5d22e77f806b9e2438f826935de5d6df34641d67'

  url "https://manytricks.com/download/_do_not_hotlink_/keymo#{version.delete('.')}.dmg"
  appcast 'http://manytricks.com/keymo/appcast.xml',
          :sha256 => '0fada217a8b17fe20397e043c45a94fa984b8928877efb59ffa88997c5b2939a'
  name 'Keymo'
  homepage 'http://manytricks.com/keymo'
  license :commercial

  app 'Keymo.app'

  zap :delete => '~/Library/Preferences/com.manytricks.Keymo.plist'
end
