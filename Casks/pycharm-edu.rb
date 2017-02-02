cask 'pycharm-edu' do
  version '3.5'
  sha256 '69b59880aa93e8329f7fee1b1696ba14d8554e3d6c3ddd9f5f150844b4258534'

  url "https://download.jetbrains.com/python/pycharm-edu-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCE&latest=true&type=release',
          checkpoint: '996879c1ca05564f7b2c3b77abf406e7bfa5c5565b725aeb8b866c709d5d8303'
  name 'Jetbrains PyCharm Educational Edition'
  name 'PyCharm Edu'
  homepage 'https://www.jetbrains.com/pycharm-edu/'

  app 'PyCharm Edu.app'

  zap delete: [
                "~/Library/Preferences/PyCharmEdu#{version.major_minor.no_dots}",
                "~/Library/Application Support/PyCharmEdu#{version.major_minor.no_dots}",
                "~/Library/Caches/PyCharmEdu#{version.major_minor.no_dots}",
                "~/Library/Logs/PyCharmEdu#{version.major_minor.no_dots}",
              ]
end
