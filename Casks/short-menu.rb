cask 'short-menu' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/com.floschliep.Short-Menu was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.floschliep.Short-Menu/ShortMenu.zip'
  name 'Short Menu'
  homepage 'http://appiculous.com/short-menu-mac/'
  license :commercial

  app 'Short Menu.app'

  zap delete: [
                '~/Library/Application Support/Short Menu',
                '~/Library/Containers/com.floschliep.Short-Menu',
                '~/Library/Logs/com.floschliep.Short-Menu',
                '~/Library/Cookies/com.floschliep.Short\-Menu.binarycookies',
              ]
end
