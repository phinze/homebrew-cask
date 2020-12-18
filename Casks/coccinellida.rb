cask "coccinellida" do
  version "0.7"
  sha256 "9eb8376fa3764e406433aff969fb5aa9f8ba78886948d013ea690cf979baaf88"

  url "https://downloads.sourceforge.net/coccinellida/Coccinellida-#{version}.zip",
      verified: "downloads.sourceforge.net/coccinellida/"
  appcast "https://raw.githubusercontent.com/troydm/coccinellida/master/sparkle.xml"
  name "Coccinellida"
  desc "Simple SSH tunnel manager"
  homepage "https://coccinellida.sourceforge.io/"

  app "Coccinellida.app"
end
