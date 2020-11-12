cask "find-any-file" do
  version "2.2.1"
  sha256 "7536540fab0db9f26861e8f5333cb8487fbdfa7c55f38157dbbc104ab3fa6d91"

  # s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/files.tempel.org/FindAnyFile_#{version}.zip"
  appcast "https://findanyfile.app/appcast2.php"
  name "Find Any File"
  desc "File finder"
  homepage "https://apps.tempel.org/FindAnyFile/"

  app "Find Any File.app"

  zap trash: "~/Library/Application Support/Find Any File"
end
