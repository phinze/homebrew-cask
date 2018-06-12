cask 'buildasaur' do
  version '1.0.3'
  sha256 'fb3dbb5eb1752c28f893b50b085a64671e678bd088be2df385605ea62d38e947'

  url "https://github.com/buildasaurs/Buildasaur/releases/download/v#{version}/Buildasaur.app.zip"
  appcast 'https://github.com/buildasaurs/Buildasaur/releases.atom'
  name 'Buildasaur'
  homepage 'https://github.com/buildasaurs/Buildasaur'

  app 'Buildasaur.app'
end
