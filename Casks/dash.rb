cask "dash" do
  if MacOS.version <= :high_sierra
    version "4.6.7"
    sha256 "e2b5eb996645b25f12ccae15e24b1b0d8007bc5fed925e14ce7be45a2b693fb6"
  else
    version "6.0.3,972"
    sha256 "d1ebf89839696883c6f283881afe4221075007303f5c7751a99b6ec97e4ecb63"
  end

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  name "Dash"
  desc "API documentation browser and code snippet manager"
  homepage "https://kapeli.com/dash"

  livecheck do
    url "https://kapeli.com/Dash#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Dash.app"

  zap trash: [
    "~/Library/Application Support/Dash",
    "~/Library/Application Support/com.kapeli.dashdoc",
    "~/Library/Caches/com.kapeli.dashdoc",
    "~/Library/Cookies/com.kapeli.dashdoc.binarycookies",
    "~/Library/HTTPStorages/com.kapeli.dashdoc.binarycookies",
    "~/Library/Logs/Dash",
    "~/Library/Preferences/com.kapeli.dashdoc.plist",
    "~/Library/Saved Application State/com.kapeli.dashdoc.savedState",
    "~/Library/WebKit/com.kapeli.dashdoc",
  ]
end
