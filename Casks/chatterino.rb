cask "chatterino" do
  version "2.2.3-beta2"
  sha256 "ce5a10067ee9d04f348349fca2bd039094d4cc6ae27747d80deaac1286942f29"

  url "https://chatterino.com/download/#{version}/Chatterino.dmg"
  name "Chatterino"
  desc "Chat client for https://twitch.tv"
  homepage "https://chatterino.com"

  app "chatterino.app"

  zap trash: "~/Library/Application Support/chatterino"
end
