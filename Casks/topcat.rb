cask "topcat" do
  version "4.7-1"
  sha256 "b1d66adfe19ff15f9d27fd1da35c3652af12b6b62a29f9d1ead154f422ec5d32"

  url "http://www.star.bris.ac.uk/~mbt/topcat/topcat-full.dmg"
  appcast "http://www.star.bris.ac.uk/~mbt/topcat/sun253/versions.html"
  name "TOPCAT"
  homepage "http://www.star.bris.ac.uk/~mbt/topcat/"

<<<<<<< HEAD
  app 'TOPCAT.app'
  binary 'TOPCAT.app/Contents/Resources/bin/topcat'
  binary 'TOPCAT.app/Contents/Resources/bin/stilts'
=======
  app "TOPCAT.app"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/bin/topcat"
  binary "#{appdir}/TOPCAT.app/Contents/Resources/bin/stilts"
>>>>>>> upstream/core-code-patch-2
end
