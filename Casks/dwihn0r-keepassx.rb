cask "dwihn0r-keepassx" do
  version "0.4.4"
  sha256 "53ae446d458ef0ab6dae268ba17b0eb9779959f3f821552de89122bd434769e2"

  url "https://github.com/dwihn0r/keepassx/releases/download/v#{version}/KeePassX-#{version}-OSX.zip"
  name "KeePassX"
  homepage "https://github.com/dwihn0r/keepassx/"

  livecheck do
    url :url
    strategy :git
  end

  app "KeePassX.app"
end
