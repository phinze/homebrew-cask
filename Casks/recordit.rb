class Recordit < Cask
  url 'https://rink.hockeyapp.net/api/2/apps/5fcda0b48f1dcf0c938b289b9ab57790/app_versions/7?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/5fcda0b48f1dcf0c938b289b9ab57790'
  homepage 'http://recordit.co/'
  version 'latest'
  sha256 :no_check
  link 'RecordIt.app'
end
