cask "tidepool-uploader" do
  version "2.34.0"
  sha256 "a4ddabfe86c7b7e5135f4ebc6c2667659bbcb7338269184bd5852066e7c2cef4"

  url "https://github.com/tidepool-org/chrome-uploader/releases/download/v#{version}/tidepool-uploader-#{version}.dmg/",
      verified: "github.com/tidepool-org/chrome-uploader/"
  appcast "https://github.com/tidepool-org/chrome-uploader/releases.atom"
  name "Tidepool Uploader"
  desc "Uploads diabetes device data to Tidepool's backend"
  homepage "https://tidepool.org/"

  app "Tidepool Uploader.app"
end
