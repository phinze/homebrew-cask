cask "hopper-debugger-server" do
  version "2.6"
  sha256 "dde3d5949a9550e4a62d135acfcd6cefa930c69d4ea07c6e4056d6e1cca136d3"

  url "https://www.hopperapp.com/HopperGDBServer/HopperDebuggerServer-#{version}.zip",
      user_agent: :fake
  name "Hopper Debugger Server"
  homepage "https://www.hopperapp.com/HopperGDBServer/"

  livecheck do
    url "https://www.hopperapp.com/HopperGDBServer/appcast.xml"
    strategy :sparkle
  end

  app "Hopper Debugger Server.app"
end
