cask 'mumu' do
  version '1.0.1'
  sha256 '6bc059e7d455056b68ba8b39635eec38758af7397fae65d0b9eeb24332a8addd'

  # paddle.s3.amazonaws.com/fulfillment_downloads/116824/ was verified as official when first introduced to the cask
  url "https://paddle.s3.amazonaws.com/fulfillment_downloads/116824/597910/3UjvmpBGSxuQuBAVlQm6_Mumu%20#{version}.dmg"
  name 'Mumu'
  homepage 'https://getmumu.com/'

  app 'Mumu.app'
end
