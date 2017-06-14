cask 'beaker' do
  version '1.7.1-0-g6dac09a'
  sha256 '9fff2da8df616ce6e2a6bf8e8c4fff7aeeec0c875a197cb63558ae1a81f34035'

  # d299yghl10frh5.cloudfront.net was verified as official when first introduced to the cask
  url "https://d299yghl10frh5.cloudfront.net/beaker-notebook-#{version}-mac.dmg"
  appcast 'https://github.com/twosigma/beakerx/releases.atom',
          checkpoint: '9a4fae4b7b68e6d0eab78ac00e4c2be7687337bdc525ac539f73fb954ab814e7'
  name 'Beaker'
  homepage 'http://beakernotebook.com/'

  app 'Beaker.app'
end
