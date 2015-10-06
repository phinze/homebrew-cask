cask :v1 => 'cdock' do
  version '9.5'
  sha256 'db92068d04b538bf1fb20f7b5d79151ce619befefb20929178a143a73f4e99cc'

  url "https://github.com/w0lfschild/cDock/releases/download/v#{version}/cDock_v#{version}.zip"
  appcast 'https://github.com/w0lfschild/cDock/releases.atom',
          :sha256 => 'aee72070788692bd02336b610f77e2ac67a1d1a663fe6feda8414b953b63968d'
  name 'cDock'
  homepage 'http://w0lfschild.github.io/pages/cdock.html'
  license :bsd

  app 'cDock.app'

  caveats <<-EOS.undent
    #{token} will only run from within /Applications,
    and will request to be moved at launch.
  EOS

  depends_on :cask => 'easysimbl'
  depends_on :macos => '>= :mavericks'
end
