cask "password-gorilla" do
  version "1.5.3.7.3"
  sha256 "51c443fb58a3628c2a45bd3160096abb9b017f33e6a08628636168f996ad0414"

  # gorilla.dp100.com/ was verified as official when first introduced to the cask
  url "https://gorilla.dp100.com/downloads/gorilla.mac.#{version.no_dots}.zip"
  appcast "https://gorilla.dp100.com/downloads/"
  name "Password Gorilla"
  homepage "https://github.com/zdia/gorilla"

  app "Password Gorilla.app"
end
