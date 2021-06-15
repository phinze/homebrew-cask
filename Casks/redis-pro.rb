cask "redis-pro" do
  version "1.0.0-beta"
  sha256 "ec5e198b97ce8548f582bd074baed2ad4bd505bc345c5d8c5a1f2af1260154d0"

  url "https://github.com/cmushroom/redis-pro/releases/download/#{version}/redis-pro_#{version}.dmg"
  name "redis-pro"
  desc "Redis management application with swiftui"
  homepage "https://github.com/cmushroom/redis-pro"

  app "redis-pro.app"

  zap trash: [
    "~/Library/Application Scripts/com.cmushroom.redis-pro",
    "~/Library/Application Support/com.cmushroom.redis-pro",
    "~/Library/Caches/com.cmushroom.redis-pro",
    "~/Library/Containers/com.cmushroom.redis-pro",
    "~/Library/Preferences/com.cmushroom.redis-pro.plist",
    "~/Library/Saved Application State/com.cmushroom.redis-pro.savedState",
  ]
end
