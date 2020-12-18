cask "leanote" do
  version "2.6.2"
  sha256 "2d24602efe3a31b63b6fc82b91f28be0bb6f1939f7c2bb23a7a8455b3ed24a54"

  url "https://downloads.sourceforge.net/leanote-desktop-app/#{version}/leanote-desktop-mac-v#{version}.zip",
      verified: "sourceforge.net/leanote-desktop-app/"
  appcast "https://sourceforge.net/projects/leanote-desktop-app/rss?path=/"
  name "Leanote"
  homepage "http://leanote.org/"

  app "Leanote.app"
end
