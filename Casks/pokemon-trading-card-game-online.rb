cask "pokemon-trading-card-game-online" do
  version "2.76.0.5082"
  sha256 :no_check

  url "https://tcgo-installer.s3.amazonaws.com/PokemonInstaller_Mac.dmg",
      verified: "https://tcgo-installer.s3.amazonaws.com/"
  name "Pokemon Trading Card Game Online"
  desc "Download and start playing!"
  homepage "https://www.pokemon.com/us/pokemon-tcg/play-online/"

  app "Pokemon Trading Card Game Online.app"

  zap trash: [
    "~/Library/Application Support/unity.The Pokémon Company International.Pokemon Trading Card Game Online",
    "~/Library/Preferences/unity.The Pokémon Company International.Pokemon Trading Card Game Online.plist",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/unity.The Pokémon Company International.Pokemon Trading Card Game Online",
  ]
end
