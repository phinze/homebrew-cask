cask 'monolingual' do
  if MacOS.version <= :snow_leopard
    version '1.4.5'
    sha256 '7684b6b6d41b784d06e636f5e7993ca3730680ccbfa83e90e74b43be58ad3e21'
  elsif MacOS.version <= :mavericks
    version '1.5.10'
    sha256 '2dd4d1164ced9c6ff431eb99db12e46faa10747c7753ed3889d6df493ee096a5'
  elsif MacOS.version <= :yosemite
    version '1.6.7'
    sha256 'c96175ef35aae6409f760e6c1f70e7cc47d45ab2b769c3238b4a4d979d13756b'
  elsif MacOS.version <= :el_capitan
    version '1.7.3'
    sha256 '24fa5ff0a5903c0eb07cd58a15292e3adab97ea0823f304241dc4187f9252ffc'
  elsif MacOS.version <= :sierra
    version '1.7.8'
    sha256 '42771c3c4d615a39ab502d7723f3c7d23e6b384b56bbcebcbdd5a04cf2495c41'
  else
    version '1.8.0'
    sha256 '688551572319035a532e98a4f2a467a43256d3b44e50916695dfdb5f73d052f1'
  end

  # github.com/IngmarStein/Monolingual was verified as official when first introduced to the cask
  url "https://github.com/IngmarStein/Monolingual/releases/download/v#{version}/Monolingual-#{version}.dmg"
  appcast 'https://github.com/IngmarStein/Monolingual/releases.atom',
          checkpoint: 'e6c6581fd3ac2a6bc14ac1ae25cfb68279dcb0c7f5fba91dab2c46d079030915'
  name 'Monolingual'
  homepage 'https://ingmarstein.github.io/Monolingual/'

  app 'Monolingual.app'
end
