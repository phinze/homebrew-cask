cask 'stella' do
  version '4.7.3'
  sha256 'b78cc81541830bc054318858e11dc07254bf1e7c64095f19479f8301b42aab77'

  # github.com/stella-emu/stella/releases/download was verified as official when first introduced to the cask
  url "https://github.com/stella-emu/stella/releases/download/release-#{version}/Stella-#{version}-macosx.dmg"
  appcast 'https://github.com/stella-emu/stella/releases.atom',
          checkpoint: '6a314ec24d5226931db33182ffdcf2adc270230dc47251f089acefda4d1181d3'
  name 'Stella'
  homepage 'https://stella-emu.github.io/'

  app 'Stella.app'
end
