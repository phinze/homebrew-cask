cask 'lmms' do
  if MacOS.version <= :snow_leopard
    version '1.0.99'
    sha256 '2ce390337a2ee372f76812b5c308ac8f3faad6981d99f0eb3b843149e3ebc98c'

    # github.com/LMMS/lmms was verified as official when first introduced to the cask
    url "https://github.com/LMMS/lmms/releases/download/v#{version}/lmms-#{version}.dmg"
  else
    version '1.1.3'
    sha256 '6d5197e6e5edd4a08cb26fc98ee229308833b4f759e9d9724a745ab1035aba15'

    # github.com/LMMS/lmms was verified as official when first introduced to the cask
    url "https://github.com/LMMS/lmms/releases/download/v#{version}/lmms-#{version}-mac10.7.dmg"
  end

  appcast 'https://github.com/LMMS/lmms/releases.atom',
          checkpoint: '2358ce3a24f437d756a91f9b8d4435bab1a1bdceeb07d49e57a1368059e43f06'
  name 'LMMS'
  homepage 'https://lmms.io/'

  app 'LMMS.app'
end
