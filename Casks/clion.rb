cask "clion" do
  version "2020.2,202.6397.106"
  sha256 "a8a5ae4cffe203598452c260f2e70bddf2ebd563928baea520e2c29113162426"

  url "https://download.jetbrains.com/cpp/CLion-#{version.before_comma}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=CL&latest=true&type=release"
  name "CLion"
  homepage "https://www.jetbrains.com/clion/"

  auto_updates true

  app "CLion.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "clion") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/CLion#{version.major_minor}",
    "~/Library/Caches/CLion#{version.major_minor}",
    "~/Library/Logs/CLion#{version.major_minor}",
    "~/Library/Preferences/CLion#{version.major_minor}",
  ]
end
