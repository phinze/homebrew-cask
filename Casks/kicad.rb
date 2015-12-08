cask :v1 => 'kicad' do
  version '4.0.0'
  sha256 '71b47ce37acd1d32eaee898254114203ef2de8b382f1353db7a01caa37a798e5'

  url "http://downloads.kicad-pcb.org/osx/stable/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org/'
  license :gpl

  suite 'Kicad'
end
