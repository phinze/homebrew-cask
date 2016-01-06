cask 'espionage' do
  version :latest
  sha256 :no_check

  url 'https://www.espionageapp.com/Espionage.dmg'
  appcast 'https://updates.taoeffect.com/espionage3/appcast.xml',
          :sha256 => '47bca65264d0dce5ac4f065c2f6312727123a5b6cb83e5d1bfdedea2a0b3a80e'
  name 'Espionage'
  homepage 'https://www.espionageapp.com/'
  license :commercial
  gpg "#{url}.sig",
      :key_url => 'https://www.taoeffect.com/other/A884B988.asc'

  app 'Espionage.app'
end
