cask "privatus" do
  version "6.3"
  sha256 "a43405c336bdb86845ed21ff11145802bf7337046cc6c3c1d7cad8687096f1b3"

  # sweetpproductions.com was verified as official when first introduced to the cask
  url "https://sweetpproductions.com/products/privatus#{version.major}/Privatus#{version.major}.dmg"
  appcast "https://sweetpproductions.com/products/privatus6/appcast.xml"
  name "Privatus"
  desc "Automated online privacy protection"
  homepage "https://privatusapp.com/"

  depends_on macos: ">= :mojave"

  app "Privatus.app"

  zap trash: [
    "~/Library/Containers/com.sweetpproductions.Privatus6",
    "~/Library/Containers/com.sweetpproductions.Privatus6/Data",
    "~/Library/Preferences/com.sweetpproductions.Privatus6.plist",
  ]
end
