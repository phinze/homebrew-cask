class Shoes < Cask
  version '3.2.16'
  sha256 'dab8e717bc49e5c33654fde487cf1f0bef9dc6832df31dc54d084e8c5843532a'

  url "http://shoes.mvmanila.com/public/shoes/shoes-#{version}-osx-10.9.tgz"
  homepage 'http://shoesrb.com/'
  license :oss

  app 'Shoes.app'
end
