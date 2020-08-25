cask "swiftjsonmodeler" do
  version "2.0.0"
  sha256 :no_check

  url "https://github.com/CodeOcenS/SwiftJSONModeler/releases/download/v#{version}/SwiftJSONModeler.For.Xcode.app.zip"
  appcast "https://github.com/CodeOcenS/SwiftJSONModeler/releases.atom"
  name "SwiftJSONModeler"
  desc "json 转 swift model 插件"
  homepage "https://github.com/CodeOcenS/SwiftJSONModeler"

  app "SwiftJSONModeler For Xcode.app"
 
end
