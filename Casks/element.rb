cask "element" do
  version "1.7.2"
  sha256 "f3d628019a67f9b4b6239b44b49e1aa76b3401b40d7e022c495d210ddc8bf71f"

  # packages.riot.im/desktop was verified as official when first introduced to the cask
  url "https://packages.riot.im/desktop/install/macos/Element-#{version}.dmg"
  appcast "https://github.com/vector-im/riot-desktop/releases.atom"
  name "Element (Riot)"
  homepage "https://element.io/get-started"

  auto_updates true

  app "Element.app"

  zap trash: [
    "~/Library/Application Support/Element (Riot)",
    "~/Library/Application Support/Element",
    "~/Library/Application Support/Riot",
    "~/Library/Caches/im.riot.app",
    "~/Library/Caches/im.riot.app.ShipIt",
    "~/Library/Logs/Riot",
    "~/Library/Preferences/im.riot.app.helper.plist",
    "~/Library/Preferences/im.riot.app.plist",
    "~/Library/Saved Application State/im.riot.app.savedState",
  ]
end
