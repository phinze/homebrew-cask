cask "nordvpn-teams" do
  version "1.7.0"
  sha256 "aa278e15a5c32b49595af15f4fd60dffe65e26cc453e74dae64cf0a8bf902394"

  # downloads.nordteams.com/ was verified as official when first introduced to the cask
  url "https://downloads.nordteams.com/mac/latest/NordVPNTeams.pkg"
  appcast "https://downloads.nordteams.com/mac/update.xml"
  name "NordVPN Teams"
  desc "Security software for business"
  homepage "https://nordvpnteams.com/"

  auto_updates true

  pkg "NordVPNTeams.pkg"

  uninstall quit:      "com.nordvpn.macos.teams.NordVPNTeamsLauncher",
            launchctl: "com.nordvpn.macos.teams.helper",
            delete:    "/Library/PrivilegedHelperTools/com.nordvpn.osx.helper",
            pkgutil:   "com.nordvpn.macos.teams"

  zap trash: [
    "~/Library/Application Support/com.nordvpn.macos.teams",
    "~/Library/Caches/com.nordvpn.macos.teams",
    "~/Library/Preferences/com.nordvpn.macos.teams.plist",
  ]
end
