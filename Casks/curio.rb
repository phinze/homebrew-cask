cask 'curio' do
  version '12.2.1'
  sha256 'bda3b8a787b89882d5e8850826bfe1ffad3c0f703b67ae8da10015cc3ec6ce40'

  url 'https://zengobi.com/downloads/Curio.zip'
  appcast 'https://www.zengobi.com/appcasts/Curio12MarkdownAppcast.xml'
  name 'Curio'
  homepage 'https://zengobi.com/curio/'

  depends_on macos: '>= :sierra'

  app 'Curio.app'
end
