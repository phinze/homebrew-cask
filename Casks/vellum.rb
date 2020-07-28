cask "vellum" do
  version "2.7.2"
  sha256 "116bf7df0d5d5bb115ed3477ccb1a976f2fb19d38f3ff54f8e6272f33c07bcc1"

  # 180g.s3.amazonaws.com/downloads/ was verified as official when first introduced to the cask
  url "https://180g.s3.amazonaws.com/downloads/Vellum-#{version.no_dots}00.zip"
  appcast "https://get.180g.co/updates/vellum/"
  name "Vellum"
  homepage "https://vellum.pub/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Vellum.app"

  zap trash: [
    "~/Library/Application Scripts/co.180g.Vellum",
    "~/Library/Containers/co.180g.Vellum",
  ]
end
