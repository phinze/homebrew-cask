cask 'dfontsplitter' do
  version '0.4.2'
  sha256 '6297da5d4f6d2f8d92eb35364178ea7972a54df7576dbd801cc483a88a7d49ad'

  url "https://peter.upfold.org.uk/files/dfontsplitter/dfontsplitter-#{version}-mac.zip"
  appcast 'https://apps.upfold.org.uk/appupdate/dfontsplitter.xml'
  name 'DfontSplitter'
  homepage 'https://peter.upfold.org.uk/projects/dfontsplitter'

  app "#{version}/DfontSplitter.app"
end
