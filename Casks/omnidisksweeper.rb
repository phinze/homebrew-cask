cask 'omnidisksweeper' do
  if MacOS.version <= :el_capitan
    version '1.9'
    sha256 '4dfcdb29bbae8b7eba22d010cb2fd2aab0547c1a1df632bc9c1ee77be206f09b'
    url "https://downloads.omnigroup.com/software/MacOSX/10.8/OmniDiskSweeper-#{version}.dmg"
  elsif MacOS.version <= :sierra
    version '1.10'
    sha256 '0d8f5b7ff075fca4503a41e1ea898a145001f3f602f6b53ffb310e0a465af080'
    url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniDiskSweeper-#{version}.dmg"
  elsif MacOS.version <= :high_sierra
    version '1.11'
    sha256 'f06b150239e5c5ee27615b1e8bd6ec2c87c61c4cda575547f124ff84986b6f37'
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniDiskSweeper-#{version.before_comma}(n).dmg"
  else
    version '1.12'
    sha256 'b79d387abd49756459a51567ab8686405bffe7831609283d6158315dfe5bb638'
    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniDiskSweeper-#{version}.dmg"
  end

  appcast 'https://update.omnigroup.com/appcast/com.omnigroup.OmniDiskSweeper'
  name 'OmniDiskSweeper'
  homepage 'https://www.omnigroup.com/more/'

  app 'OmniDiskSweeper.app'

  zap trash: [
               '~/Library/Application Scripts/com.omnigroup.OmniSoftwareUpdate.OSUCheckService',
               '~/Library/Containers/com.omnigroup.OmniSoftwareUpdate.OSUCheckService',
               '~/Library/Preferences/com.omnigroup.OmniDiskSweeper.plist',
               '~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist',
             ]
end
