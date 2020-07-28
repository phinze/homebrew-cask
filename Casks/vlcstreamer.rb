cask "vlcstreamer" do
  version "5.25"
  sha256 "7f5d68a69af857804150c7d24209b38fd50a136d0cda42b0abb8626a4abe2797"

  url "https://hobbyistsoftware.com/Downloads/VLCStreamer/Versions/VLCStreamer_#{version}.dmg"
  appcast "https://hobbyistsoftware.com/vlcstreamer-versions"
  name "VLC Streamer"
  homepage "https://hobbyistsoftware.com/vlcstreamer"

  app "VLCStreamer.app"
end
