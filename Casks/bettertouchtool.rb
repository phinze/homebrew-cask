cask 'bettertouchtool' do
  if MacOS.version <= :mavericks
    version '2.05'
    sha256 '41013cfeffee286a038363651db3dd315ff3a1e0cf07774d9ce852111be50a5a'

    # bettertouchtool.net/releases was verified as official when first introduced to the cask
    url "https://bettertouchtool.net/releases/btt#{version}_final_10_9.zip"
  else
    version '3.332-1529'
    sha256 '38c2ef9cb9720950a1da8f363568c924b66b7ff57759592f091aca06a84298be'

    # bettertouchtool.net/releases was verified as official when first introduced to the cask
    url "https://bettertouchtool.net/releases/btt#{version}.zip"
    appcast 'https://www.corecode.io/macupdater/appcasts/bettertouchtool.txt'
  end

  name 'BetterTouchTool'
  homepage 'https://folivora.ai/'

  auto_updates true

  app 'BetterTouchTool.app'

  zap trash: [
               '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
               '~/Library/Application Support/BetterTouchTool',
             ]
end
