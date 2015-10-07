cask :v1 => 'vimediamanager' do
  version '0.7a13c'
  sha256 'da5a1f76d556bbdb4cff76295cd0e60a47d05f6073b35dae20a88387f4eb10ce'

  url "http://mariusth.channelwood.org/vimediamanager/files/vimediamanager_v#{version}.dmg"
  name 'ViMediaManager'
  appcast 'http://mariusth.heliohost.org/vimediamanager/appcast-cocoa.xml',
          :sha256 => '79c39ee503db054d15de98571385729eee7f9a2392ec14b54a2ac2e85a381992'
  homepage 'http://mariusth.heliohost.org/vimediamanager/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ViMediaManager.app'
end
