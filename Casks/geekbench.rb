cask 'geekbench' do
  if MacOS.version <= :mavericks
    version '3.4.2'
    sha256 '05e1b977a46648d38cf6c641be7ef34722200d0168a10d4372fca771ffa24e28'
  else
    version '4.4.2'
    sha256 '3c46e630a28a0752afd702fc1cd379edd2420001be22302c932e61751284c0cc'
  end

  url "https://cdn.geekbench.com/Geekbench-#{version}-Mac.zip"
  appcast "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml"
  name 'Geekbench'
  homepage 'https://www.geekbench.com/'

  app "Geekbench #{version.major}.app"

  zap trash: [
               "~/Library/Caches/com.primatelabs.Geekbench#{version.major}",
               "~/Library/Preferences/com.primatelabs.Geekbench#{version.major}.plist",
             ]
end
