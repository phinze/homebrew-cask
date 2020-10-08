cask "sunloginclient" do
  version "10.5.0.31882"
  sha256 "760fde445f0e7755b584c8f3f9ed84b7fbabcceed9b383de07e10172186d3ea8"

  url "https://dl-cdn.oray.com/sunlogin/mac/SunloginClient_#{version}.dmg"
  name "Sunlogin X"
  name "向日葵 X"
  homepage "https://sunlogin.oray.com/"

  pkg "SunloginClient.pkg"

  uninstall quit:      "com.oray.sunlogin.macclient",
            pkgutil:   "com.mygreatcompany.pkg.SunloginClient",
            launchctl: [
              "com.oray.sunlogin.desktopagent",
              "com.oray.sunlogin.helper",
              "com.oray.sunlogin.service",
            ]
end
