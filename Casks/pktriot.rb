cask "pktriot" do
  version "0.10.10"
  sha256 "e98b9e307e2bc72cfac1cdad23eb81489db3ba0e140a6463cd486bebaff297de"

  url "https://download.packetriot.com/macos/pktriot-#{version}.macos.tar.gz"
  name "pktriot"
  desc "Instantly and securely host server applications and static websites"
  homepage "https://packetriot.com/"

  livecheck do
    url "https://packetriot.com/downloads"
    strategy :page_match
    regex(%r{href=.*?/pktriot-(\d+(?:\.\d+)*)\.macos.tar.gz}i)
  end

  binary "pktriot-#{version}/pktriot"
end
