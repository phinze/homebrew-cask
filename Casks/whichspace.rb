cask 'whichspace' do
  version '0.1.9'
  sha256 '4c1c0fb5f036cb1e11e2126ea5caaafb2ea9526523ed3a36a160793910529b57'

  url "https://github.com/gechr/WhichSpace/releases/download/v#{version}/WhichSpace.app.zip"
  name 'WhichSpace'
  homepage 'https://github.com/gechr/WhichSpace'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  depends_on macos: '> :yosemite'

  app 'WhichSpace.app'
end
