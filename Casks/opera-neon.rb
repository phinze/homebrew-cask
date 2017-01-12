cask 'opera-neon' do
  version :latest
  sha256 :no_check

  url 'http://get.geo.opera.com/.private/OperaNeon.dmg'
  name 'Opera Neon'
  homepage 'http://www.opera.com/computer/neon'

  app 'Opera Neon.app'

  zap delete: '~/Library/Application Support/Opera Neon'
  zap delete: '~/Library/Caches/Opera Neon'
end
