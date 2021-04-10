cask "xpra" do
  version "4.1.2,78.0"
  sha256 :no_check

  url "https://www.xpra.org/dists/osx/x86_64/Xpra-x86_64.pkg"
  name "Xpra"
  homepage "https://www.xpra.org/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "Xpra-x86_64.pkg"

  uninstall pkgutil:  "org.xpra.pkg"

  zap trash: "/Library/Application Support/Xpra"
end
