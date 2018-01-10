cask 'firebird' do
  version '1.4'
  sha256 '65b4755ea5d72e6004972908ec8c416e96f9d5c466ab01379543c27e54439c6e'

  url "https://github.com/nspire-emus/firebird/releases/download/v#{version}/firebird-emu-mac.dmg"
  appcast 'https://github.com/nspire-emus/firebird/releases.atom',
          checkpoint: '35d06123bf4aee8f5eef821600daffa5a4240ce91c53b07fe2577e827249ddf8'
  name 'firebird'
  homepage 'https://github.com/nspire-emus/firebird'

  app 'firebird.app'
end
