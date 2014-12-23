cask :v1 => 'hocus-focus' do
  version :latest
  sha256 :no_check

  url 'http://hocusfoc.us/static/releases/latest.zip'
  name 'Hocus Focus'
  homepage 'http://hocusfoc.us/'
  license :gratis

  app 'Hocus Focus.app'
end