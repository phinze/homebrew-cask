cask "texshop" do
  version "4.50"
  sha256 "fa03e33e283afa785d835786350015501b058ebd4710b379c95ffa86423d1fa8"

  url "https://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  appcast "https://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml"
  name "TeXShop"
  desc "TeX previewer"
  homepage "https://pages.uoregon.edu/koch/texshop/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TeXShop.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texshop.sfl*",
    "~/Library/Application Support/TeXShop",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeXShop Help*",
    "~/Library/Caches/TeXShop",
    "~/Library/Preferences/TeXShop.plist",
    "~/Library/TeXShop",
  ]
end
