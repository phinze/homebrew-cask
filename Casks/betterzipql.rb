cask :v1 => 'betterzipql' do
  version :latest
  sha256 :no_check

  url 'http://macitbetter.com/BetterZipQL.zip'
  homepage 'http://macitbetter.com/BetterZip-Quick-Look-Generator/'
  license :unknown

  qlplugin 'BetterZipQL.qlgenerator'
end
