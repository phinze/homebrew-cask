cask 'audirvana' do
  version '3.5.3'
  sha256 '0fd776edaa55e3d8ba341513db6f1ed8ccaf0eab43874cdb02ea7879dcf3b757'

  url "https://audirvana.com/delivery/Audirvana_#{version}.dmg"
  appcast "https://audirvana.com/delivery/audirvana#{version.major}_#{version.minor}_appcast.xml"
  name 'Audirvana'
  homepage 'https://audirvana.com/'

  app 'Audirvana.app'

  zap trash: [
               '/Library/LaunchDaemons/com.audirvana.Audirvana-Plus.plist',
               '/Library/PrivilegedHelperTools/com.audirvana.Audirvana-Plus',
               '~/Library/Caches/com.audirvana.Audirvana-Plus',
               '~/Library/Cookies/com.audirvana.Audirvana-Plus.binarycookies',
               '~/Library/Preferences/com.audirvana.Audirvana-Plus.plist',
             ]
end
