cask 'jazzup' do
  version :latest
  sha256 :no_check

  url 'https://www.irradiatedsoftware.com/download/JazzUp.zip'
  name 'JazzUp'
  homepage 'https://www.irradiatedsoftware.com/labs/'

  app 'JazzUp.app'

  zap trash: [
               '~/Library/Preferences/com.irradiatedsoftware.JazzUp.plist',
               '~/Library/Caches/com.irradiatedsoftware.JazzUp',
             ]
end
