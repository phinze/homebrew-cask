cask "energia" do
  version "1.8.10E23"
  sha256 "031c18b8aaa05962df7cd1d660dfe3366a3dc6ff148fd7bdb89fd37ebbc492e5"

  url "https://s3.amazonaws.com/energiaUS/distributions/energia-#{version}-macosx-signed.zip",
      verified: "s3.amazonaws.com/energiaUS/"
  appcast "https://energia.nu/download/"
  name "Energia"
  homepage "https://energia.nu/"

  app "Energia.app"

  zap trash: [
    "~/Library/Energia15",
    "~/Library/Saved Application State/nu.energia.Energia.savedState",
  ]
end
