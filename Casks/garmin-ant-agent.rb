class GarminAntAgent < Cask
  url 'http://download.garmin.com/software/ANTAgentforMac_222.dmg'
  homepage 'http://www8.garmin.com/support/download_details.jsp?id=4417'
  version '2.2.2'
  sha256 '11df82fdd8d39a9d83df03c8efe8b1b1cb3e8f65d1e1bd47f823e9eda9bfcc57'
  install 'Install Garmin ANT Agent.pkg'
  uninstall :quit => 'com.garmin.AntAgent',
 			:pkgutil => 'com.garmin.garminANTAgent.pkg'

end
