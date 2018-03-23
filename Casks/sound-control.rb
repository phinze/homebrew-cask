cask 'sound-control' do
  version '2.2.0,4297'
  sha256 '6b5c30e51713351679d052f9d315f48b77e04e7e95a01fec1fba53e7424c0c31'

  url "https://staticz.com/download/#{version.after_comma}/"
  name 'Sound Control'
  homepage 'https://staticz.com/soundcontrol/'

  pkg 'Sound Control Installer.pkg'

  uninstall launchctl: 'com.staticz.soundcontrol.*',
            quit:      'com.staticz.SoundControl',
            pkgutil:   'com.staticz.installer.soundcontrol.*'
end
