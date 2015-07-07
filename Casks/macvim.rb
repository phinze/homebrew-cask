cask :v1 => 'macvim' do

  if MacOS.release <= :mountain_lion
    version '7.4-73'
    sha256 '7f573fb9693052a86845c0a9cbb0b3c3c33ee23294f9d8111187377e4d89f72c'
    # github.com is the official download host per the vendor homepage
    url "https://github.com/macvim-dev/macvim/releases/download/snapshot-#{version.sub(%r{^.*-},'')}/MacVim-snapshot-#{version.sub(%r{^.*-},'')}-Mountain-Lion.tbz"
  elsif MacOS.release == :mavericks
    version '7.4-73'
    sha256 '557c60f3487ab68426cf982c86270f2adfd15e8a4d535f762e6d55602754d224'
    # github.com is the official download host per the vendor homepage
    url "https://github.com/b4winckler/macvim/releases/download/snapshot-#{version.sub(%r{^.*-},'')}/MacVim-snapshot-#{version.sub(%r{^.*-},'')}-Mavericks.tbz"
  else
    version '7.4-76'
    sha256 'a8d55540527c7614d738b28e8f2b0476d01b341c1d2d6775b8155f900452faea'
    # github.com is the official download host per the vendor homepage
    url "https://github.com/macvim-dev/macvim/releases/download/Snapshot-#{version.sub(%r{^.*-},'')}/MacVim-snapshot-#{version.sub(%r{^.*-},'')}-Yosemite.tbz"
    appcast 'https://github.com/macvim-dev/macvim/releases.atom'
  end

  name 'MacVim'
  homepage 'https://github.com/macvim-dev/macvim'
  license :oss

  app "MacVim-snapshot-#{version.sub(%r{^.*-},'')}/MacVim.app"
  binary "MacVim-snapshot-#{version.sub(%r{^.*-},'')}/mvim"

  zap :delete => [
                  '~/Library/Preferences/org.vim.MacVim.LSSharedFileList.plist',
                  '~/Library/Preferences/org.vim.MacVim.plist',
                 ]

  caveats do
    files_in_usr_local
    <<-EOS.undent
      Note that homebrew also provides a compiled macvim Formula that links its
      binary to /usr/local/bin/mvim. It's not recommended to install both the
      Cask and the Formula of MacVim.
    EOS
  end
end
