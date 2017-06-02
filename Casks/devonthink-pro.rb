cask 'devonthink-pro' do
  version '2.9.11'
  sha256 '9a67d4319d7bf9ef50cb2f30f965a574ce666bc2db3bec10107fde759b65cbdd'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: 'cedb6878dfb929f4c3e4303b32b5940e949fbea1a63a0ec92c56f1824ca8b110'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'

  app 'DEVONthink Pro.app'
end
