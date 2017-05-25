cask 'path-finder' do
  version :latest
  sha256 :no_check

  url 'http://get.cocoatech.com/PF7.zip'
  name 'Path Finder'
  homepage 'https://cocoatech.com/'

  app 'Path Finder.app'

  zap delete: [
                '~/Library/Preferences/com.cocoatech.PathFinder.plist',
                '~/Library/Application Support/Path Finder',
              ]
end
