cask "utterly" do
  version "0.9.0-SNAPSHOT-140e1bc"
  sha256 :no_check

  url "https://www.utterly.app/Utterly.pkg"
  name "Utterly"
  desc "Remove background noise during your calls in any audio or video conferencing app"
  homepage "https://www.utterly.app/"

  pkg "Utterly.pkg"

  uninstall script:  {
    executable: "/Applications/Utterly.app/Contents/Resources/uninstall.sh",
    input:      ["yes"],
    sudo:       true,
  },
            pkgutil: "app.utterly.Utterly"
end
