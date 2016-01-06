cask 'validator-sac' do
  version '0.10.8'
  sha256 '1555a9d20fdd35398407cded18f2208ad28b9d4647dcf8eef320354e63556f15'

  url "https://habilis.net/download/Validator-SAC_#{version}.zip"
  appcast 'https://habilis.net/download/validator-sac.xml',
          :sha256 => '0b01f16e91ba9915b50b443f807deb6aa252966de6ac7e8b73ae78ccbb78a0c6'
  name 'Validator S.A.C.'
  homepage 'https://habilis.net/validator-sac/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Validator-SAC.app'
end
