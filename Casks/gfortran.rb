cask 'gfortran' do
  if MacOS.version == :el_capitan
    version '6.1'
    sha256 'eb817bce64bf9032595e09166bdaaf740c83bf7258f900b79cd6786437bacbf4'

    # coudert.name/software was verified as official when first introduced to the cask
    url "https://github.com/fxcoudert/gfortran-for-macOS/releases/download/#{version}/gfortran-#{version}-ElCapitan.dmg"
    pkg "gfortran-#{version}-ElCapitan/gfortran.pkg"
  else
    version '6.3'
    sha256 '38b81bc878dba41cfdbb0c335aec5a97554a5d1766fb3e3ca6be7da0df9e8e09'

    # coudert.name/software was verified as official when first introduced to the cask
    url "https://github.com/fxcoudert/gfortran-for-macOS/releases/download/#{version}/gfortran-#{version}-Sierra.dmg"
    pkg 'gfortran.pkg'
  end

  appcast 'https://github.com/fxcoudert/gfortran-for-macOS/releases.atom'
  name 'gfortran'
  homepage 'https://gcc.gnu.org/wiki/GFortranBinaries'

  conflicts_with formula: 'gcc'
  depends_on macos: '>= :el_capitan'

  uninstall delete:  [
                       '/usr/local/gfortran',
                       '/usr/local/bin/gfortran',
                     ],
            pkgutil: 'com.gnu.gfortran'

  caveats do
    files_in_usr_local
  end
end
