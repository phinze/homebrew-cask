cask "ccmenu" do
  version "15.0"
  sha256 "4ee3c5f65828c30c5cbe147064396d387a175042601076adf12b6c1a99792c1d"

  url "https://github.com/erikdoe/ccmenu/releases/download/v#{version}/CCMenu.app.zip",
      verified: "github.com/erikdoe/ccmenu/"
  appcast "https://github.com/erikdoe/ccmenu/releases.atom"
  name "CCMenu"
  desc "Application to monitor continuous integration servers"
  homepage "http://ccmenu.org/"

  app "CCMenu.app"
end
