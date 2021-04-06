cask "cpuinfo" do
  version "1.4.6"
  sha256 "ffff"

  url "https://github.com/yusukeshibata/cpuinfo/raw/#{version}/dist/cpuinfo.zip"
  name "cpuinfo"
  desc "CPU meter menu bar app"
  homepage "https://github.com/yusukeshibata/cpuinfo/"

  app "cpuinfo.app"
end
