cask "postman" do
  version "7.31.1"
  sha256 "7880fa9f0d3f0cb6cf6d93f55efb299ac3755836a63d73d07f769281584d589e"

  # dl.pstmn.io/download/version/ was verified as official when first introduced to the cask
  url "https://dl.pstmn.io/download/version/#{version}/osx64"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://dl.pstmn.io/download/latest/osx"
  name "Postman"
  homepage "https://www.postman.com/"

  auto_updates true

  app "Postman.app"

  zap trash: [
    "~/Library/Application Support/Postman",
    "~/Library/Application Support/com.postmanlabs.mac.ShipIt",
    "~/Library/Caches/Postman",
    "~/Library/Caches/com.postmanlabs.mac",
    "~/Library/Preferences/ByHost/com.postmanlabs.mac.ShipIt.*.plist",
    "~/Library/Preferences/com.postmanlabs.mac.plist",
    "~/Library/Saved Application State/com.postmanlabs.mac.savedState",
  ]
end
