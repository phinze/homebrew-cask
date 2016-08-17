cask 'thetube' do
  version '2.11.3'
  sha256 '8ca81ca68d5ddca04a9fa8d53e9b8ba542e1b3c9806b3cd500172abd316bf277'

  url "http://download2.equinux.com/files/other/TheTube_#{version}_Web.zip"
  name 'TheTube'
  homepage 'https://www.equinux.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TheTube.app'
end
