cask 'libreoffice' do
  if Hardware::CPU.is_32_bit? || MacOS.release < :mountain_lion
    version '4.3.7'
    sha256 '2964a952ab633426df402de2f128cf788354ac622b7c30b25209d185d17617ec'
    # documentfoundation.org is the official download host per the vendor homepage
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86/LibreOffice_#{version}_MacOS_x86.dmg"
  else
    version '5.0.4'
    sha256 '36d3a99dde9fd5bb845f93a24c091a36c97ff1adedf878ed2188704f3dfeb2ae'
    # documentfoundation.org is the official download host per the vendor homepage
    url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86_64/LibreOffice_#{version}_MacOS_x86-64.dmg"
  end
  name 'LibreOffice'
  homepage 'https://www.libreoffice.org/'
  license :mpl
  gpg "#{url}.asc",
      :key_id => 'c2839ecad9408fbe9531c3e9f434a1efafeeaea3'

  app 'LibreOffice.app'
  binary 'LibreOffice.app/Contents/MacOS/gengal'
  binary 'LibreOffice.app/Contents/MacOS/regmerge'
  binary 'LibreOffice.app/Contents/MacOS/regview'
  binary 'LibreOffice.app/Contents/MacOS/senddoc'
  binary 'LibreOffice.app/Contents/MacOS/soffice'
  binary 'LibreOffice.app/Contents/MacOS/ui-previewer'
  binary 'LibreOffice.app/Contents/MacOS/uno'
  binary 'LibreOffice.app/Contents/MacOS/unoinfo'
  binary 'LibreOffice.app/Contents/MacOS/unopkg'
  binary 'LibreOffice.app/Contents/MacOS/urelibs'
  binary 'LibreOffice.app/Contents/MacOS/uri-encode'
  binary 'LibreOffice.app/Contents/MacOS/xpdfimport'
end
