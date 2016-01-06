cask 'iboostup' do
  version :latest
  sha256 :no_check

  url 'https://www.iboostup.com/iboostup.dmg'
  appcast 'https://www.iboostup.com/updates',
          :sha256 => 'b2ac6238575017acfdb5c589111795207780623065cb8e65e1ee569142986592'
  name 'iBoostUp'
  homepage 'https://www.iboostup.com/'
  license :freemium

  app 'iBoostUp.app'
end
