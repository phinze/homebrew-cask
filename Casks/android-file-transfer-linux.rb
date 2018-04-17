cask 'android-file-transfer-linux' do
  version '3.2'
  sha256 '84469fd3adba4046a9137093c3e0731e60ae2220381502b452d767cd4de4e676'

  # github.com/whoozle/android-file-transfer-linux/ was verified as official when first introduced to the cask
  url 'https://github.com/whoozle/android-file-transfer-linux/releases/download/v3.2/AFTOSX-3.2-62d1c79.dmg'
  appcast 'https://github.com/whoozle/android-file-transfer-linux/releases.atom',
          checkpoint: 'bd62e37c3b26874adbf882b3e25808cfefef05ff788654cf15a3e5f97975dd03'
  name 'Android File Transfer for Linux'
  homepage 'https://whoozle.github.io/android-file-transfer-linux/'

  conflicts_with cask: 'android-file-transfer'

  app 'Android File Transfer.app'
end
