cask "ttscoff-mmd-quicklook" do
  version "1.2"
  sha256 "6370fa8d98e627d83fe70e9bc5bd400bd7b6b68257a40bf33bb70df5d12935c1"

  url "https://github.com/ttscoff/MMD-QuickLook/releases/download/#{version}/MMD-QuickLook#{version}.zip"
  name "MMD-QuickLook"
  homepage "https://github.com/ttscoff/mmd-quicklook"

  livecheck do
    url :url
    strategy :git
  end

  qlplugin "MultiMarkdown QuickLook.qlgenerator"
end
