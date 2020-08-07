cask "folx" do
  version "5.21.13951"
  sha256 "dc75771df7ba8fe8aed37b891388d88754bed4243178f98b84707c95f5d3969b"

  url "https://cdn.eltima.com/download/downloader_mac.dmg"
  appcast "https://cdn.eltima.com/download/folx-updater/folx.xml",
          must_contain: version.major_minor
  name "Folx"
  homepage "https://mac.eltima.com/download-manager.html"

  auto_updates true

  app "Folx.app"

  zap trash: [
    "~/Library/Application Support/Eltima Software/Folx3",
    "~/Library/Caches/com.eltima.Folx3",
    "~/Library/Internet Plug-Ins/Folx3Plugin.plugin",
    "~/Library/Logs/Folx.log",
    "~/Library/Logs/Folx3.log",
    "~/Library/Preferences/com.eltima.Folx3.plist",
    "~/Library/Preferences/com.eltima.FolxAgent.plist",
    "~/Library/Saved Application State/com.eltima.Folx3.savedState",
  ]
end
