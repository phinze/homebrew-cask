cask 'dictunifier' do
  version '2.1'
  sha256 'ff80b354ebcbe7ddad0e01d64c667e6a026d92f6bac01d380ec009205679f14c'

  url "https://github.com/jjgod/mac-dictionary-kit/releases/download/v#{version}/DictUnifier-#{version}.zip"
  appcast 'https://github.com/jjgod/mac-dictionary-kit/releases.atom',
          :sha256 => '4145a3908f8a11155f2e99673f6ec99dd7d6825a052f48278d24554fd873bdb5'
  name 'DictUnifier'
  homepage 'https://github.com/jjgod/mac-dictionary-kit/'
  license :oss

  app 'DictUnifier.app'
end
