cask "routeconverter" do
  version "2.28"
  sha256 "4fef088ac9a83f3f938b7ec0f967f504385c495715173f3e1ca7336c37661944"

  url "https://static.routeconverter.com/download/previous-releases/#{version}/RouteConverterMacOpenSource.app.zip"
  appcast "https://static.routeconverter.com/download/previous-releases/"
  name "RouteConverter"
  homepage "https://www.routeconverter.com/"

  auto_updates true

  app "RouteConverterMacOpenSource.app"
end
