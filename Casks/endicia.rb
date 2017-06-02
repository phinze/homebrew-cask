cask 'endicia' do
  version '2.17v738'
  sha256 'a0dbe49e53494d451caef05701e445b9dd0454f45faf293fe54ce1feead913da'

  url "https://download.endiciaformac.com/EndiciaForMac#{version.no_dots}.dmg"
  appcast 'https://s3.amazonaws.com/endiciaformac/EndiciaForMacSparkle.xml',
          checkpoint: '27b61b03cf0d412974146e6507df1fd2348625df78e82ba43bdb4261fd94407b'
  name 'Endicia for Mac'
  homepage 'https://endiciaformac.com/'

  app 'Endicia.app'
end
