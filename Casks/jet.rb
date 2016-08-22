cask 'jet' do
  version '1.10.0'
  sha256 'c3add7cb1eecc323eeaaa62a72711ef02b646f30f09c47139f0b1bfca5e25f55'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  name 'Codeship Jet'
  homepage 'https://codeship.com/documentation/docker/'
  license :closed

  depends_on formula: 'docker'

  binary 'jet'
end
