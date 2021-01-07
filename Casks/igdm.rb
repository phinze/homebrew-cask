cask "igdm" do
  version "3.0.1"
  sha256 "b114842282b64daccc3530790aedc4ed09914fa16e14724948c392b6d48236df"

  url "https://github.com/ifedapoolarewaju/igdm/releases/download/v#{version}/IGdm-#{version}.dmg",
      verified: "github.com/ifedapoolarewaju/igdm/"
  name "IG:dm"
  desc "Desktop application for Instagram DMs"
  homepage "https://igdm.me/"

  livecheck do
    url :url
    strategy :git
  end

  app "IGdm.app"

  uninstall quit: "com.ifedapoolarewaju.desktop.igdm"

  zap trash: [
    "~/Library/Application Support/IGdm",
    "~/Library/Logs/IGdm",
    "~/Library/Preferences/com.ifedapoolarewaju.desktop.igdm.helper.plist",
    "~/Library/Preferences/com.ifedapoolarewaju.desktop.igdm.plist",
    "~/Library/Saved Application State/com.ifedapoolarewaju.desktop.igdm.savedState",
  ]
end
