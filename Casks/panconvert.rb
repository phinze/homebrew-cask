cask 'panconvert' do
  version '0.2.7'
  sha256 '1533540b3a28fb2ba263e9a79a813e0968c674a5ad6d370ee0163fd828ba7c42'

  url "https://downloads.sourceforge.net/panconvert/PanConvert-#{version}.app.dmg"
  appcast 'https://sourceforge.net/projects/panconvert/rss?path=/Newest',
          checkpoint: '5464a597ae81046b9000a9ab4e0ec722579f68262cea6e13625770b87af67a7e'
  name 'PanConvert'
  homepage 'http://panconvert.sourceforge.net/'

  stage_only true

  postflight do
    system_command "#{staged_path}/Panconvert-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
                   args: [
                           '--mode', 'unattended'
                         ]
  end

  uninstall_postflight do
    system_command "/Applications/Panconvert-#{version}/uninstall.app/Contents/MacOS/osx-intel",
                   args: [
                           '--mode', 'unattended'
                         ]
  end
end
