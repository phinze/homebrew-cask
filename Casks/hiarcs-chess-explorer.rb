cask "hiarcs-chess-explorer" do
  version "1.9.5"
  sha256 "806d3407b0e2487695ce8744cfb72b9bda68d5e8aa25b946627f880f7ff4d693"

  url "https://www.hiarcs.com/hce/HIARCS-Chess-Explorer-Installer-v#{version}.pkg"
  appcast "https://www.hiarcs.com/mac-chess-explorer-download.htm"
  name "(Deep) HIARCS Chess Explorer"
  homepage "https://www.hiarcs.com/mac-chess-explorer.htm"

  pkg "HIARCS-Chess-Explorer-Installer-v#{version}.pkg"

  uninstall signal:  ["TERM", "com.hiarcs.chessexplorer"],
            pkgutil: "com.hiarcs.*"
end
