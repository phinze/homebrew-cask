cask 'wabbitemu' do
  # Build:DownloadId
  version '21050:187234'
  sha256 '23fc164767da10389eec858d022967fb58fdca1debaa5b9e022f2e9280a4f4e8'

  # download-codeplex.sec.s-msft.com/Download was verified as official when first introduced to the cask
  url "http://download-codeplex.sec.s-msft.com/Download/Release?ProjectName=wabbit&DownloadId=#{version.after_colon}&FileTime=130242671530600000&Build=#{version.before_colon}"
  name 'Wabbitemu TI Calculator Emulator'
  homepage 'https://wabbit.codeplex.com/'

  app 'WabbitEmu.app'
end
