cask "drawio" do
  version "13.7.3"
  sha256 "30428d2956443df64558448a3648d65c862eee5fc7a9eb8600a04e643b86f651"

  # github.com/jgraph/drawio-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{version}.dmg"
  appcast "https://github.com/jgraph/drawio-desktop/releases.atom"
  name "draw.io Desktop"
  homepage "https://www.draw.io/"

  app "draw.io.app"

  zap trash: [
    "~/Library/Application Support/draw.io",
    "~/Library/Caches/com.jgraph.drawio.desktop",
    "~/Library/Logs/draw.io",
    "~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist",
    "~/Library/Preferences/com.jgraph.drawio.desktop.plist",
    "~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState",
    "~/Library/WebKit/com.jgraph.drawio.desktop",
  ]
end
