<<<<<<< HEAD
cask "lando" do
  version "3.0.7"
  sha256 "a29d2068d1ed063378b1a6fcd3a57702f3d12f24ba0be5edf35d067d739b3dba"
=======
cask 'lando' do
  version '3.0.8'
  sha256 'b2b966f15dc87372e0c54d2fb883f4ad1e193e4f9d76f93cc970a982ea3fd20d'
>>>>>>> upstream/revert-86177-cask_repair_update-lando

  # github.com/lando/lando/ was verified as official when first introduced to the cask
  url "https://github.com/lando/lando/releases/download/v#{version}/lando-v#{version}.dmg"
  appcast "https://github.com/lando/lando/releases.atom"
  name "Lando"
  homepage "https://docs.lando.dev/"

  depends_on cask: "docker"

  pkg "LandoInstaller.pkg",
      choices: [
        {
          "choiceIdentifier" => "choiceDocker",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "choiceLando",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: "io.lando.pkg.lando"
end
