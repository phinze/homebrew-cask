cask 'home-inventory' do
  version :latest
  sha256 :no_check

  url 'https://binaryformations.com/homeinventory/HomeInventory.dmg'
  name 'Home Inventory'
  homepage 'https://binaryformations.com/products/home-inventory/'

  depends_on macos: '>= :sierra'

  app 'Home Inventory.app'
end
