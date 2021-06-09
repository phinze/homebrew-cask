cask "final-fantasy-xiv" do
  version "pnvdkzgk77dj10"
  sha256 "a187414e0a0a101b995f08706d1bd341992258e72d535409f1136daaed413f17"

  url "https://gdl.square-enix.com/ffxiv/inst/#{version}/FINAL_FANTASY_XIV_ONLINE_x64.dmg",
      verified: "square-enix.com"
  name "Final Fantasy XIV"
  desc "Story-driven massively multiplayer online role-playing game"
  homepage "https://finalfantasyxiv.com/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "FINAL FANTASY XIV ONLINE.app"

  uninstall trash: "~/Documents/My Games/FINAL FANTASY XIV - A Realm Reborn"
end
