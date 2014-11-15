cask :v1 => 'sonos' do
  version :latest
  sha256 :no_check

  url 'http://www.sonos.com/redir/controller_software_mac'
  homepage 'http://www.sonos.com/'
  license :unknown

  app 'Sonos.app'
end
