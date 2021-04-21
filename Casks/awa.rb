cask "awa" do
  version "1.5.6"
  sha256 "1624be0ef6221376ac1748f48474c8f1011fc07320123b9dc90632cd1caad723"

  url "https://download-d.awa.io/mac/stable/AWASetup-v#{version}.dmg",
      verified: "download-d.awa.io/mac/stable/"
  name "AWA"
  homepage "https://awa.fm/"

  livecheck do
    url "https://pd.awa.io/mac/stable/latest"
    strategy :header_match
  end

  auto_updates true

  app "AWA.app"

  uninstall launchctl: "fm.awa.liverpool",
            quit:      "fm.awa.liverpool"

  zap trash: [
    "~/Library/Application Support/AWA",
    "~/Library/Preferences/fm.awa.liverpool.plist",
    "~/Library/Preferences/fm.awa.liverpool.helper.plist",
    "~/Library/Saved Application State/fm.awa.liverpool.savedState",
  ]
end
