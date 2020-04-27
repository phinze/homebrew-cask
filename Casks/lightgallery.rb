cask 'lightgallery' do
  version '0.1.1'
  sha256 '5650328b475391c5c16cbc616096fe70a8ec7c8e5f19329fd2bd660d7ac104cd'

  # github.com/sachinchoolur/lightgallery-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/sachinchoolur/lightgallery-desktop/releases/download/#{version}/lightgallery_#{version}.dmg-mac.zip"
  appcast 'https://github.com/sachinchoolur/lightgallery-desktop/releases.atom'
  name 'lightgallery'
  homepage 'https://sachinchoolur.github.io/lightgallery-desktop/'

  app 'lightgallery.app'

  zap trash: [
               '~/Library/Application Support/Lightgallery',
               '~/Library/Caches/Lightgallery',
               '~/Library/Preferences/lightgallery-desktop.plist',
             ]
end
