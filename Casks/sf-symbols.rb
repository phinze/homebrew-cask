cask "sf-symbols" do
  if MacOS.version <= :mojave
    version "1.1"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    url "https://devimages-cdn.apple.com/design/resources/download/SF-Symbols.dmg"
  else
    version "2.0"
    sha256 "d6071715cc4e5ad46877fd34d7099f53cedeba190667b510927f5775f3f48d4a"
    url "https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-2.dmg"
  end

  name "SF Symbols"
  desc "Tool that provides consistent, highly configurable symbols for apps"
  homepage "https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/"

  depends_on macos: ">= :mojave"

  pkg "SF Symbols.pkg"

  uninstall pkgutil: "com.apple.SFSymbols.plist",
            delete:  "/Applications/SF Symbols.app"
end
