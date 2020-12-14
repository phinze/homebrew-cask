cask "trojanx" do
  version "0.4"
  sha256 "794e02b6b530ea076b5fcc51061efb597cc4ff0a1d8064897bca16122f6fc798"

  url "https://github.com/JimLee1996/TrojanX/releases/download/#{version}/TrojanX.app.zip"
  appcast "https://github.com/JimLee1996/TrojanX/releases.atom"
  name "TrojanX"
  desc "Unidentifiable mechanism to bypass GFW"
  homepage "https://github.com/JimLee1996/TrojanX"

  app "TrojanX.app"

  zap trash: [
    "~/Library/Preferences/TrojanX.plist",
    "/Library/Application Support/TrojanX",
    "~/Library/Application Support/TrojanX",
  ]
end
