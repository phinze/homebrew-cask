cask :v1 => 'cloak' do
  version '2.0.12b'
  sha256 '5bf8290e1d81a55dd2deb0b997517f3c8017a610508eef426dc040c7586665bd'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          :sha256 => '4b0f0b654c5845eaedab57cc762c700380aebca27b27f02a9dd2a6facbb5b3c5'
  name 'Cloak'
  homepage 'https://www.getcloak.com'
  license :gratis

  app 'Cloak.app'
end
