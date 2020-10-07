cask "waterfox" do
  version "2020.02"
  sha256 "9c27aac645c269e765229adeeb48dcd298aab3b578709c70f3b9acdfdad07275"

  url "https://cdn.waterfox.net/releases/osx64/installer/Waterfox%20Classic%20#{version}%20Setup.dmg"
  appcast "https://www.waterfox.net/releases/"
  name "Waterfox"
  desc "Cross-platform web browser"
  homepage "https://www.waterfox.net/"

  app "Waterfox.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
