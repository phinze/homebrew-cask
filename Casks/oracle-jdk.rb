cask "oracle-jdk" do
  version "16.0.1,9:7147401fd7354114ac51ef3e1328291f"
  sha256 "7ab227e36916c4beda068edda0f0a8a8ab0c3cddf837489d7bf9cea2f23a50a2"

  url "https://download.oracle.com/otn-pub/java/jdk/#{version.before_comma}+#{version.after_comma.before_colon}/#{version.after_colon}/jdk-#{version.before_comma}_osx-x64_bin.dmg",
      cookies: {
        "oraclelicense" => "accept-securebackup-cookie",
      }
  name "Oracle Java Standard Edition Development Kit"
  homepage "https://www.oracle.com/technetwork/java/javase/overview/index.html"

  depends_on macos: ">= :yosemite"

  pkg "JDK #{version.before_comma}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version.before_comma}"

  caveats do
    license "https://www.oracle.com/technetwork/java/javase/terms/license/javase-license.html"
  end
end
