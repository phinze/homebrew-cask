cask 'racket' do
  version '7.7'
  sha256 '0641f89c1f96a142bb4bbcc39f548740163c4778334f61841bc5f40fbd9e616d'

  url "https://mirror.racket-lang.org/installers/#{version}/racket-#{version}-x86_64-macosx.dmg"
  appcast 'https://download.racket-lang.org/all-versions.html'
  name 'Racket'
  homepage 'https://racket-lang.org/'

  conflicts_with cask: 'racket-cs'

  suite "Racket v#{version}"
  binary "#{appdir}/Racket v#{version}/bin/drracket"
  binary "#{appdir}/Racket v#{version}/bin/gracket"
  binary "#{appdir}/Racket v#{version}/bin/gracket-text"
  binary "#{appdir}/Racket v#{version}/bin/mred"
  binary "#{appdir}/Racket v#{version}/bin/mred-text"
  binary "#{appdir}/Racket v#{version}/bin/mzc"
  binary "#{appdir}/Racket v#{version}/bin/mzpp"
  binary "#{appdir}/Racket v#{version}/bin/mzscheme"
  binary "#{appdir}/Racket v#{version}/bin/mztext"
  binary "#{appdir}/Racket v#{version}/bin/pdf-slatex"
  binary "#{appdir}/Racket v#{version}/bin/plt-games"
  binary "#{appdir}/Racket v#{version}/bin/plt-help"
  binary "#{appdir}/Racket v#{version}/bin/plt-r5rs"
  binary "#{appdir}/Racket v#{version}/bin/plt-r6rs"
  binary "#{appdir}/Racket v#{version}/bin/plt-web-server"
  binary "#{appdir}/Racket v#{version}/bin/racket"
  binary "#{appdir}/Racket v#{version}/bin/raco"
  binary "#{appdir}/Racket v#{version}/bin/scribble"
  binary "#{appdir}/Racket v#{version}/bin/setup-plt"
  binary "#{appdir}/Racket v#{version}/bin/slatex"
  binary "#{appdir}/Racket v#{version}/bin/slideshow"
  binary "#{appdir}/Racket v#{version}/bin/swindle"
end
