cask 'gcc-arm-embedded' do
  # Exists as a cask because it is impractical as a formula:
  # https://github.com/Homebrew/homebrew-core/pull/45780#issuecomment-569246452
  version '8-2018-q4-major'
  sha256 '0b528ed24db9f0fa39e5efdae9bcfc56bf9e07555cb267c70ff3fee84ec98460'

  url "https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2018q4/gcc-arm-none-eabi-#{version}-mac.tar.bz2"
  name 'GCC ARM Embedded'
  homepage 'https://developer.arm.com/open-source/gnu-toolchain/gnu-rm'

  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-addr2line"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-ar"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-as"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-c++"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-c++filt"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-cpp"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-elfedit"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-g++"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-gcc"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-gcc-ar"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-gcc-nm"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-gcc-ranlib"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-gcov"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-gcov-tool"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-gdb"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-gdb-py"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-gprof"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-ld"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-ld.bfd"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-nm"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-objcopy"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-objdump"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-ranlib"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-readelf"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-size"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-strings"
  binary "gcc-arm-none-eabi-#{version}/bin/arm-none-eabi-strip"
end
