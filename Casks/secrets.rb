cask 'secrets' do
  version '1.0.6'
  sha256 '9604bc37a52fe32cd5146715fe5f401512b214847284151155d28c43413e0d25'

  url "https://blacktree-secrets.googlecode.com/files/Secrets_#{version}.zip"
  name 'Secrets'
  homepage 'https://code.google.com/p/blacktree-secrets/'
  license :oss

  prefpane 'Secrets.prefPane'
end
