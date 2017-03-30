cask 'rclone-browser' do
  version '1.2,a1156a0'
  sha256 '542cd23eea128736999a7e512a9f2ff89be081c688d1581e6c78ab3d3ca118dd'

  # github.com/mmozeiko/RcloneBrowser was verified as official when first introduced to the cask
  url "https://github.com/mmozeiko/RcloneBrowser/releases/download/#{version.before_comma}/#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://github.com/mmozeiko/RcloneBrowser/releases.atom',
            checkpoint: 'a1156a045bcee8f66d1cab89598a1e35ce9e479c'
  name 'Rclone Browser'
  homepage 'https://mmozeiko.github.io/RcloneBrowser/'

  depends_on formula: 'rclone'

  app "#{version.before_comma}-#{version.after_comma}/Rclone Browser.app"

  zap delete: [
                '~/Library/Preferences/Rclone Browser.plist',
                '~/Library/Preferences/com.rclone-browser.rclone-browser.plist',
              ]
end
