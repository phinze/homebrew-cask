cask 'whatsize' do
  version '7.0.8'
  sha256 '955162947462eb79b19e60dc5583b6ae1a7a412255be7a9a435296a7bbdb3946'

  url "https://www.whatsizemac.com/software/whatsize#{version.major}/whatsize_#{version}.tgz"
  appcast "https://www.whatsizemac.com/software/whatsize#{version.major}/release/notes.xml"
  name 'WhatSize'
  homepage 'https://whatsizemac.com/'

  app 'WhatSize.app'
end
