cask v1test: 'with-gpg' do
  version '1.2.3'
  sha256 '9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853'

  url TestHelper.local_binary_url('caffeine.zip')
  homepage 'http://example.com/with-gpg'
  gpg 'http://example.com/gpg-signature.asc',
      key_id: '01234567'

  app 'Caffeine.app'
end
