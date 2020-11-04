cask "mia-for-gmail" do
  version "2.4.5"
  sha256 "31f94c2c5bafc2550adb50ed36919b45c2939bbd691ce1b27b8486d1094600c5"

  # sovapps.com/application/notifier-pro-for-gmail/ was verified as official when first introduced to the cask
  url "https://www.sovapps.com/application/notifier-pro-for-gmail/mia.#{version}.zip"
  appcast "https://www.sovapps.com/application/notifier-pro-for-gmail/notifier.xml"
  name "Mia for Gmail"
  desc "Desktop email client for Gmail"
  homepage "https://www.miaforgmail.com/"

  auto_updates true

  app "Mia for Gmail.app"

  uninstall quit: "com.sovapps.gmailnotifier"

  zap trash: [
    "~/Library/Application Scripts/com.sovapps.gmailnotifier",
    "~/Library/Application Scripts/com.sovapps.launchAtLoginHelper",
    "~/Library/Caches/com.sovapps.gmailnotifier",
    "~/Library/Containers/com.sovapps.launchAtLoginHelper",
    "~/Library/Preferences/com.sovapps.gmailnotifier.plist",
  ]
end
