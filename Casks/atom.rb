cask 'atom' do
  version '1.5.3'
  sha256 '5cb5db601bd80be60d068e1c13a0b927bdebe40926b78e09164ad2af75625c0d'

  # github.com/atom/atom was verified as official when first introduced to the cask
  url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: 'aaf86bae27a5d4b6bb49d6ed641c06779f55abc59ee2373f8ae164d8e5775e74'
  name 'Github Atom'
  homepage 'https://atom.io/'
  license :mit

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Atom.app'
  binary 'Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm', target: 'apm'
  binary 'Atom.app/Contents/Resources/app/atom.sh', target: 'atom'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/.atom',
                '~/Library/Application Support/ShipIt_stderr.log',
                '~/Library/Application Support/Atom',
                '~/Library/Application Support/ShipIt_stdout.log',
                '~/Library/Application Support/com.github.atom.ShipIt',
                '~/Library/Caches/com.github.atom',
                '~/Library/Preferences/com.github.atom.plist',
              ]
end
