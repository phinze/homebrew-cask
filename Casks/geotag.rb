cask 'geotag' do
  version '4.3'
  sha256 '054aa3db26340c21b04c7173934de2a6d03f825d2568480e5396e2a38f8f6ae8'

  url "https://www.snafu.org/GeoTag/GeoTag-#{version}.dmg"
  appcast 'https://www.snafu.org/GeoTag/'
  name 'GeoTag'
  homepage 'https://www.snafu.org/GeoTag/'

  depends_on macos: '>= :yosemite'
  depends_on formula: 'exiftool'

  app 'GeoTag.app'

  zap trash: [
               '~/Library/Caches/org.snafu.GeoTag',
               '~/Library/Preferences/org.snafu.GeoTag.plist',
               '~/Library/Saved Application State/org.snafu.GeoTag.savedState',
             ]
end
