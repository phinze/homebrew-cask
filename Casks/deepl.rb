cask "deepl" do
  version "2.2.31854"
  sha256 :no_check

  url "https://appdownload.deepl.com/macos/DeepL.dmg"
  name "DeepL"
  desc "Trains AIs to understand and translate texts"
  homepage "https://www.deepl.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "DeepL.app"

  uninstall quit: [
    "com.linguee.DeepLCopyTranslator",
    "com.linguee.DeepLLauncher",
    "com.linguee.DeepLStatusBar",
  ]

  zap trash: [
    "~/Library/Caches/com.linguee.DeepLCopyTranslator",
    "~/Library/Caches/com.linguee.DeepLCopyTranslator.ShipIt",
    "~/Library/Group Containers/*.com.linguee.DeepL",
    "~/Library/Preferences/com.linguee.DeepLCopyTranslator.plist",
  ]
end
