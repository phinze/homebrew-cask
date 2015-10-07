cask :v1 => 'robofont' do
  version '1.6'
  sha256 'fb2fd390868a32fb9e89490081f3f052e65c1156ee32b39cac1c799b87abc4c7'

  url 'http://robofont.com/downloads/RoboFont_1410152315.dmg'
  name 'RoboFont'
  appcast 'http://doc.robofont.com/appcast',
          :sha256 => '3da1318b70b29c6ead3aa18d2eb297f48bfd1ee4f701e632f1b89f4096cfa634'
  homepage 'http://robofont.com'
  license :other # See http://doc.robofont.com/license-agreement/

  app 'RoboFont.app'

  depends_on :macos => '>= :mavericks'
end
