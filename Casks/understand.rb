cask "understand" do
  version "6.0.1066"
  sha256 "f278bd79a16accbd24ffdfb67e57f4636206ac9e2c3b339f319b285f0cfaa604"

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast "https://licensing.scitools.com/download/getChecksums/Understand/#{version.patch}"
  name "SciTools Understand"
  desc "Code visualization and exploration tool"
  homepage "https://scitools.com/features/"

  app "Understand.app"
end
