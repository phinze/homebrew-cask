class Appdelete < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.reggieashworth.com/downloads/AppDelete.dmg'
  appcast 'http://www.reggieashworth.com/AD4Appcast.xml'
  homepage 'http://www.reggieashworth.com/appdelete'

  link 'AppDelete.app'
end
