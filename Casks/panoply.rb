cask :v1 => 'panoply' do
  version '4.3.1'
  sha256 :no_check

  url "http://www.giss.nasa.gov/tools/panoply/PanoplyOSX-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  name 'Panoply'
  homepage 'http://www.giss.nasa.gov/tools/panoply/'
  license :closed

  app 'Panoply.app'

  caveats <<-EOS.undent
    #{token} requires Java 7+, you can install the latest Java using
      brew cask install java
  EOS
end
