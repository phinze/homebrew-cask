cask 'audacity-lame-library' do
  version '3.98.2'
  sha256 '5ef5dca6c6dccb06366b44f2b3fc281a496a87247d23e123e133536f929bcb56'

  # lame.buanzo.org was verified as official when first introduced to the cask
  url 'http://lame.buanzo.org/Lame_Library_v3.98.2_for_Audacity_on_OSX.dmg'
  name 'Lame Library v3.98.2 for Audacity'
  homepage 'http://manual.audacityteam.org/man/faq_installation_and_plug_ins.html#maclame'
  license :unknown

  depends_on macos: '>= :snow_leopard'
  depends_on cask: 'audacity'

  pkg 'Lame Library v3.98.2 for Audacity.pkg'

  uninstall pkgutil: 'com.sourceforge.audacity.lameLibraryForAudacity.pkg'
end
