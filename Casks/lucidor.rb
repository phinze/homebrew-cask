cask :v1 => 'lucidor' do
  version '0.9.10-1'
  sha256 '21bf3eba46f5bad773b9302490ff30c3cebac7dd82b4dcdd84e83d3d861c2b62'

  url "http://lucidor.org/get.php?id=lucidor-#{version}.dmg"
  name 'Lucidor'
  homepage 'http://lucidor.org/lucidor/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Lucidor.app'
end
