cask "wifispoof" do
  version "3.5"
  sha256 "c8dc13935de7024a2920e163d3a7977e5d9b74629ce30fc3a3b4ff35ade516eb"

  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof#{version.major}.dmg",
      verified: "sweetpproductions.com/products/"
  appcast "https://sweetpproductions.com/products/wifispoof#{version.major}/appcast.xml"
  name "WiFiSpoof"
  homepage "https://wifispoof.com/"

  auto_updates true

  app "WiFiSpoof.app"
end
