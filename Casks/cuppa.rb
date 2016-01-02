cask 'cuppa' do
  version '1.7.8'
  sha256 'd8be48b618b8d6bb1e435de379d88fe5697041e2a2ec52bf68218c76b9d21fe2'

  url "http://www.nathanatos.com/software/downloads/Cuppa-#{version}.zip"
  appcast 'http://www.nathanatos.com/software/cuppa.xml',
          :sha256 => 'c56a222270948c5ec17b264f400492ed651b87a21bf3cc89c09fbc874031b7bb'
  name 'Cuppa'
  homepage 'http://www.nathanatos.com/software'
  license :bsd

  app 'Cuppa.app'
end
