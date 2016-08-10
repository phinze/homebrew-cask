cask 'notion' do
  version '0.1.6'
  sha256 '5ae990ccf4da265c059766e24a2bf6e0f2991a5115573be0f8f346e052782178'

  url "https://www.notion.so/desktop/Notion-#{version}.dmg"
  name 'Notion'
  homepage 'https://www.notion.so'
  license :gratis # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'notion.app'
end
