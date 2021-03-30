cask "yate" do
  version "6.4.1,10306"
  sha256 :no_check

  url "https://2manyrobots.com/Updates/Yate/Yate.zip"
  name "Yate"
  homepage "https://2manyrobots.com/yate/"

  livecheck do
    url "https://2manyrobots.com/Updates/Yate/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Yate.app"
end
