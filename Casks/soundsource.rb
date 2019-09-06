cask 'soundsource' do
  version '4,1,4'
  sha256 '98b7777c6a24f465cde3e844183364293538e9beae0cb0b53287dbe31518d776'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.soundsource&version=4008000'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  depends_on macos: '>= :el_capitan'

  app 'SoundSource.app'
end
