cask "xpra" do
  version "4.1,26987.0"
  sha256 :no_check

  url "https://www.xpra.org/dists/osx/x86_64/Xpra-x86_64.pkg"
  name "Xpra"
  homepage "https://www.xpra.org/"

  pkg "Xpra-x86_64.pkg"

  uninstall pkgutil:  "org.xpra.pkg"

  zap trash: "/Library/Application Support/Xpra"
end
