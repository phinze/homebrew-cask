cask 'keyboard-maestro' do
  version '8.2.2'
  sha256 '629378cef79b2d96fbb31dfe47ae9136c2fee60bb46f898d9be85dce6338d391'

  # stairways.com was verified as official when first introduced to the cask
  url "https://files.stairways.com/keyboardmaestro-#{version.no_dots}.zip"
  name 'Keyboard Maestro'
  homepage 'https://www.keyboardmaestro.com/main/'

  depends_on macos: '>= :yosemite'

  app 'Keyboard Maestro.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stairways.keyboardmaestro.editor.sfl*',
               '~/Library/Application Support/Keyboard Maestro',
               '~/Library/Caches/com.stairways.keyboardmaestro.editor',
               '~/Library/Caches/com.stairways.keyboardmaestro.engine',
               '~/Library/Logs/Keyboard Maestro',
               '~/Library/Preferences/com.stairways.keyboardmaestro.editor.plist',
               '~/Library/Preferences/com.stairways.keyboardmaestro.engine.plist',
               '~/Library/Preferences/com.stairways.keyboardmaestro.plist',
               '~/Library/Saved Application State/com.stairways.keyboardmaestro.editor.savedState',
             ]
end
