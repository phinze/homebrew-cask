class Airparrot < Cask
  url 'http://download.airsquirrels.com/AirParrot/Mac/AirParrot.dmg'
  appcast 'http://airparrot.com/updates/AirParrot.xml'
  homepage 'http://www.airsquirrels.com/airparrot/'
  version 'latest'
  sha256 :no_check
  link 'AirParrot.app'
end
