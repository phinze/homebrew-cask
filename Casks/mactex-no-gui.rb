cask 'mactex-no-gui' do
  version '2020.0407'
  sha256 'a33af89de36c7c84a76050c9704d50d23892e9c2070f04f6a53e1c6d5a332f67'

  # mirror.ctan.org/systems/mac/mactex was verified as official when first introduced to the cask
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-#{version.no_dots}.pkg"
  appcast 'https://www.tug.org/mactex/downloading.html'
  name 'MacTeX'
  homepage 'https://www.tug.org/mactex/'

  conflicts_with cask: [
                         'basictex',
                         'mactex',
                       ]
  depends_on formula: 'ghostscript'
  depends_on macos: '>= :high_sierra'

  pkg "mactex-#{version.no_dots}.pkg",
      choices: [
                 {
                   # Ghostscript
                   'choiceIdentifier' => 'choice1',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   # Ghostscript Dynamic Library
                   'choiceIdentifier' => 'choice2',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   # GUI-Applications
                   'choiceIdentifier' => 'choice3',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   # TeXLive
                   'choiceIdentifier' => 'choice4',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
               ]

  uninstall pkgutil: "org.tug.mactex.texlive#{version.major}",
            delete:  [
                       "/usr/local/texlive/#{version.major}",
                       '/Library/TeX',
                       '/etc/paths.d/TeX',
                       '/etc/manpaths.d/TeX',
                     ]

  zap trash: [
               '/usr/local/texlive/texmf-local',
               "~/Library/texlive/#{version.major}",
             ],
      rmdir: [
               '/usr/local/texlive',
               '~/Library/texlive',
             ]
end
