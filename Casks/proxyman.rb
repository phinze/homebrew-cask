cask "proxyman" do
  version "2.16.0"
  sha256 "60f8e2027fefcc092e8921b9121e177f17b5e9e6abb352ba28ead173367f00a4"

  url "https://github.com/ProxymanApp/Proxyman/releases/download/#{version}/Proxyman_#{version}.dmg",
      verified: "github.com/ProxymanApp/Proxyman/"
  appcast "https://github.com/ProxymanApp/Proxyman/releases.atom"
  name "Proxyman"
  desc "Modern and intuitive HTTP Debugging Proxy app"
  homepage "https://proxyman.io/"

  auto_updates true

  app "Proxyman.app"

  uninstall_postflight do
    stdout, * = system_command "/usr/bin/security",
                               args: ["find-certificate", "-a", "-c", "Proxyman", "-Z"],
                               sudo: true
    hashes = stdout.lines.grep(/^SHA-256 hash:/) { |l| l.split(":").second.strip }
    hashes.each do |h|
      system_command "/usr/bin/security",
                     args: ["delete-certificate", "-Z", h],
                     sudo: true
    end
  end

  uninstall quit:      "com.proxyman.NSProxy",
            launchctl: "com.proxyman.NSProxy.HelperTool",
            delete:    "/Library/PrivilegedHelperTools/com.proxyman.NSProxy.HelperTool"

  zap trash: [
    "~/.proxyman*",
    "~/Library/Application Support/com.proxyman",
    "~/Library/Application Support/com.proxyman.NSProxy",
    "~/Library/Caches/Proxyman",
    "~/Library/Caches/com.proxyman.NSProxy",
    "~/Library/Cookies/com.proxyman.binarycookies",
    "~/Library/Cookies/com.proxyman.NSProxy.binarycookies",
    "~/Library/Preferences/com.proxyman.plist",
    "~/Library/Preferences/com.proxyman.NSProxy.plist",
    "~/Library/Saved Application State/com.proxyman.NSProxy.savedState",
  ]
end
