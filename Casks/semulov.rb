cask :v1 => 'semulov' do
  version '2.0'
  sha256 'de2b9d4e874885a6421c17fb716e2072827c4d111c946d15ada2b4d31392e803'

  url "http://kainjow.com/downloads/Semulov_#{version}.zip"
  name 'Semulov'
  appcast 'http://kainjow.com/updates/semulov.xml',
          :sha256 => 'd458ce08acdc5848d165c397192bb502f12a878b10680e355b31e47b54f57442'
  homepage 'http://www.kainjow.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Semulov.app'
end
