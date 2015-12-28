cask 'electron' do
  version '0.36.2'
  sha256 '676c3740c15fcb79dce88207b0c515236d2538c75dd76127f6a5f91fd57e04bb'

  url "https://github.com/atom/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/atom/electron/releases.atom',
          :sha256 => '55892603ffe9108f3d3056c6452e02961b1ba4d19599cfd829deba8be060c0cd'
  name 'Electron'
  homepage 'http://electron.atom.io/'
  license :mit

  app 'Electron.app'
  binary 'Electron.app/Contents/MacOS/Electron', :target => 'electron'

  caveats <<-EOS.undent
    Starting #{token} applications with the symlink (e.g. from the terminal)
    will cause the app not to accept user input, use the full path instead
  EOS
end
