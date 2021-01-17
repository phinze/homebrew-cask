cask "morpheus" do
  version "2.1.0.b190630"
  sha256 "cdc48fa8444d00cdb896735d70512931935e059abd6e38e48a0af782dca78cdb"

  url "https://imc.zih.tu-dresden.de/morpheus/packages/mac/Morpheus_#{version}.dmg",
      verified: "imc.zih.tu-dresden.de/morpheus/packages/mac/"
  name "Morpheus"
  desc "Modelling environment for multi-cellular systems biology"
  homepage "https://morpheus.gitlab.io/"

  livecheck do
    url "https://morpheus.gitlab.io/download/"
    strategy :page_match
    regex(%r{href=.*?/Morpheus_(\d+(?:\.\d+)*\.b\d+)\.dmg}i)
  end

  conflicts_with cask: "homebrew/cask-versions/morpheus-beta"

  app "Morpheus.app"

  zap trash: [
    "~/Library/Application Support/Morpheus",
    "~/Library/Preferences/org.morpheus.Morpheus.plist",
  ]
end
