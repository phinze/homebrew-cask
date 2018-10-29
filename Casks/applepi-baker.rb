cask 'applepi-baker' do
  version :latest
  sha256 :no_check

  url 'https://www.tweaking4all.com/downloads/raspberrypi/ApplePi-Baker.zip',
      cookies: {
                 'gdbbx_session_activity' => '0',
               }
  name 'ApplePi-Baker'
  homepage 'https://www.tweaking4all.com/hardware/raspberry-pi/macosx-apple-pi-baker/'

  app 'ApplePi-Baker.app'

  zap trash: '~/Library/Saved Application State/com.tweaking4all.PiBaker.savedState'
end
