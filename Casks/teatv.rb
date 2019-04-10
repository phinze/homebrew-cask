cask 'teatv' do
  version '1.5.0'
  sha256 '92ed3632f5bd5baf8b25700f09db2d05d59e74f81277b88a89c7b0e4d3758b55'

  url 'https://github.com/TeaTV/TeaTV-macOS/releases/download/v1.5.0/TeaTV.v1.5.0.dmg'
  appcast 'https://github.com/TeaTV/TeaTV-macOS/releases.atom'
  name 'TeaTV macOS Desktop App'
  homepage 'http://teatv.net'

  app 'TeaTV.app'
end
