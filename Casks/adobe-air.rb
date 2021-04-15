cask "adobe-air" do
  version "33.1.1.444"
  sha256 :no_check

  url "https://airsdk.harman.com/assets/downloads/AdobeAIR.dmg"
  name "Adobe AIR"
  homepage "https://airsdk.harman.com/runtime"

  livecheck do
    url "https://airsdk.harman.com/main.df64a052216e26eaedd8.js"
    strategy :page_match
    regex(/version\s*(\d+(?:\.\d+)*)/i)
  end

  installer script: {
    executable: "Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer",
    args:       ["-silent"],
    sudo:       true,
  }

  uninstall script: {
    executable: "Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer",
    args:       ["-uninstall"],
    sudo:       true,
  },
            rmdir:  [
              "/Applications/Adobe/Flash Player/AddIns",
              "/Applications/Adobe/Flash Player",
              "/Applications/Adobe",
            ]

  zap trash: [
    "~/Library/Application Support/Adobe/AIR",
    "~/Library/Caches/com.adobe.air.ApplicationInstaller",
  ],
      rmdir: "~/Library/Application Support/Adobe/"
end
