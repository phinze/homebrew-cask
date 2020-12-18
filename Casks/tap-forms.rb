cask "tap-forms" do
  version "5.3.17,1852"
  sha256 :no_check

  url "https://vendors.paddle.com/download/product/503174",
      verified: "vendors.paddle.com/download/product/503174"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://vendors.paddle.com/download/product/503174"
  name "Tap Forms 5"
  desc "Helps to organize important files in one place"
  homepage "https://www.tapforms.com/"

  app "Tap Forms Mac #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.tapzapp.tapforms-mac",
    "~/Library/Containers/com.tapzapp.tapforms-mac",
  ]
end
