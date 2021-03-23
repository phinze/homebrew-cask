cask "obs-virtualcam" do
  version "1.3.1,5bf3231"
  sha256 "3b793ee5e55a834c97775e049e8707857b37da810ffa73bbb1e26196a0427aee"

  url "https://github.com/johnboiles/obs-mac-virtualcam/releases/download/v#{version.before_comma}/obs-mac-virtualcam-#{version.after_comma}-v#{version.before_comma}.pkg"
  name "OBS Virtual Camera"
  homepage "https://github.com/johnboiles/obs-mac-virtualcam"

  livecheck do
    url "https://github.com/johnboiles/obs-mac-virtualcam/releases"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/obs-mac-virtualcam-(\d+(?:\.\d+)*)-v?([a-f0-9]+)\.pkg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  pkg "obs-mac-virtualcam-#{version.after_comma}-v#{version.before_comma}.pkg"

  uninstall pkgutil: "com.johnboiles.obs-mac-virtualcam"

  caveats do
    discontinued
  end
end
