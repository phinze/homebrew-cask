cask 'qupzilla' do
  version :latest
  sha256 :no_check

  url 'https://www.qupzilla.com/startdownload?mac'
  name 'QupZilla'
  homepage 'http://www.qupzilla.com'
  license :gpl

  app 'QupZilla.app'
end
