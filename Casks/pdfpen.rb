cask "pdfpen" do
  version "12.2.3"
  sha256 "7aafb25ce3234bac3a6c499c31ef97ef478e3a059e82ac548a49a04a933c9d17"

  url "https://cdn.smilesoftware.com/PDFpen_#{version.before_comma}.dmg"
  name "PDFpen"
  desc "PDF editor"
  homepage "https://smilesoftware.com/PDFpen"

  livecheck do
    url "https://smilesoftware.com/appcast/PDFpen#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "PDFpen.app"
end
