cask 'unrarx' do
  version '2.2'
  sha256 'd371ae58bfae5269575cf0822a5432a371b2f1b4e710e4b08b465aebf88ce1ae'

  url "https://www.danijelj.com/files/unrarx/UnRarX_#{version}.zip"
  name 'UnRarX'
  homepage 'https://www.danijelj.com/unrarx/'
  license :gratis

  app 'UnRarX.app'
end
