cask 'speedify' do
  version :latest
  sha256 :no_check

  url 'https://downloads.speedify.com/speedify.php?platform=osx'
  name 'Speedify'
  homepage 'http://speedify.com'

  app 'Speedify.app'

  uninstall launchctl: [
                         'me.connectify.SMJobBlessHelper',
                         'SwitchboardService',
                         'SpeedifyService',
                       ],
            script:    '/Applications/Speedify.app/Contents/Resources/uninstall-speedify-service.sh'

  zap delete: '~/Library/Speedify'
end
