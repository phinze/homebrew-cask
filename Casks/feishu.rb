cask 'feishu' do
  version '3.21.4'
  sha256 '0531b93222b6dfc93b9c6b973e150683ef71b7508ae05e0e362dd89568a851c8'

  # sf3-ttcdn-tos.pstatp.com was verified as official when first introduced to the cask
  url "https://sf3-ttcdn-tos.pstatp.com/obj/ee-appcenter/Feishu-#{version}.dmg"
  appcast 'https://www.feishu.cn/api/downloads'
  name 'feishu'
  homepage 'https://www.feishu.cn/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Lark.app', target: 'Feishu.app'
end
