cask "irccloud" do
  version "0.16.0"
  sha256 "e942432cc457ce275960f6e5f120cc7be914ee06dc45fc88f9566a9aae251d79"

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/IRCCloud-#{version}-universal.dmg"
  appcast "https://github.com/irccloud/irccloud-desktop/releases.atom"
  name "IRCCloud Desktop"
  desc "IRC client"
  homepage "https://github.com/irccloud/irccloud-desktop"

  app "IRCCloud.app"
end
