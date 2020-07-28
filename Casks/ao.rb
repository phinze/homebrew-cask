cask "ao" do
  version "6.9.0"
  sha256 "c69522f78e82476540637fd3a2ab0c9de1e911530a1eb88c9cf757e933debe0e"

  url "https://github.com/klaussinani/ao/releases/download/v#{version}/Ao-#{version}.dmg"
  appcast "https://github.com/klaussinani/ao/releases.atom"
  name "Ao"
  homepage "https://github.com/klaussinani/ao"

  app "Ao.app"
end
