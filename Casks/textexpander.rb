cask 'textexpander' do
  if MacOS.version <= :snow_leopard
    version '3.4.2'
    sha256 '87859d7efcbfe479e7b78686d4d3f9be9983b2c7d68a6122acea10d4efbb1bfa'

    url "https://cdn.smilesoftware.com/TextExpander_#{version}.zip"
  elsif MacOS.version <= :mavericks
    version '4.3.6'
    sha256 'ec90d6bd2e76bd14c0ca706d255c9673288f406b772e5ae6022e2dbe27848ee9'

    url "https://cdn.smilesoftware.com/TextExpander_#{version}.zip"
  else
    version '6.1.2'
    sha256 '744a2b1dfef3d3d4a71dd045094152ea1c7fbd2e901c7d87cc752f5b21ec3887'

    url "https://cdn.textexpander.com/mac/TextExpander_#{version}.zip"
    appcast 'https://textexpander.com/help/desktop/releasenotes.html'
        checkpoint '06e349b77972644f1f7e036fbea79d978483f215e063d429c48ddc87bbace889'
  end

  name 'TextExpander'
  homepage 'https://smilesoftware.com/TextExpander'

  auto_updates true
  accessibility_access true

  app 'TextExpander.app'

  uninstall login_item: 'TextExpander'

  zap delete: '~/Library/Application Support/TextExpander/'
end
