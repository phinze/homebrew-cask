cask "macupdater" do
  version "1.5.8"
  sha256 "991a95f5931cf8688eeca7c09ac3e5b33c69f78928608740d13f951095e97b76"

  url "https://www.corecode.io/downloads/macupdater_#{version}.dmg"
  appcast "https://www.corecode.io/macupdater/macupdater.xml"
  name "MacUpdater"
  homepage "https://www.corecode.io/macupdater/index.html"

  auto_updates true

  app "MacUpdater.app"
  binary "#{appdir}/MacUpdater.app/Contents/Resources/macupdater_client"

  uninstall quit:      "com.corecode.MacUpdater",
            launchctl: "com.corecode.MacUpdaterLaunchHelper"

  zap trash: [
    "~/Library/Application Scripts/com.corecode.MacUpdaterLaunchHelper",
    "~/Library/Application Support/MacUpdater",
    "~/Library/Application Support/MacUpdaterInstallHelper",
    "~/Library/Caches/com.corecode.MacUpdater",
    "~/Library/Containers/com.corecode.MacUpdaterLaunchHelper",
    "~/Library/Cookies/com.corecode.MacUpdater.binarycookies",
    "~/Library/Preferences/com.corecode.MacUpdater.plist",
  ]
end
