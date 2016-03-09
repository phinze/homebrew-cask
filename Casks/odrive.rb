cask 'odrive' do
  version '3801'
  sha256 '3f655ccfab6a04bbcf6d5660b03ea0532184ee0840f6f5edec71d65340ebb3fe'

  # downloads can be found at https://www.odrive.com/downloaddesktop
  # d3huse1s6vwzq6.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3huse1s6vwzq6.cloudfront.net/odrivesync.#{version}.dmg"
  name 'odrive'
  homepage 'https://app.odrive.com/'
  license :gratis

  pkg "odrive.#{version}.pkg"

  uninstall pkgutil: 'com.oxygencloud.odrive.*'
end
