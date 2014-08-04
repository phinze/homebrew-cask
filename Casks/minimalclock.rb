class Minimalclock < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.ilovecolorz.net/download/MinimalClockScreenSaver.dmg'
  homepage 'http://ilovecolorz.net/minimalclock/'

  install ' .pkg'
  uninstall :pkgutil => 'com.ilovecolorz.minimalclockScreenSaver.*'
end
