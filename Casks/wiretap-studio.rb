cask :v1 => 'wiretap-studio' do
  version '1.2.2'
  sha256 'cfb0eb8b10828153f900d93a920b650cbba8a21d1f7e28bedc0414ccb2c3f8d8'

  url 'http://www.ambrosiasw.com/dl/wiretap'
  name 'WireTap Studio'
  appcast 'https://www.AmbrosiaSW.com/updates/profile.php/wiretap_studio/release',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  homepage 'http://www.ambrosiasw.com/utilities/wiretap/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'WireTap Studio.app'
end
