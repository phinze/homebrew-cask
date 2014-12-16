cask :v1 => 'geppetto' do
  version '4.3.0'

  if Hardware::CPU.is_32_bit?
    sha256 'd470ca583fd7be26fc0f2b24ee8ee35f101ec215bafc1cbc5b3455040eb0d2b3'
    url "https://downloads.puppetlabs.com/geppetto/4.x/geppetto-macosx.cocoa.x86-#{version}-R201409300140.zip"
  else
    sha256 'c21a3522eead31643985108c6467de1956b21626e03e9c30050b31f9df0a9bd7'
    url "https://downloads.puppetlabs.com/geppetto/4.x/geppetto-macosx.cocoa.x86_64-#{version}-R201409300140.zip"
  end
  homepage 'http://puppetlabs.github.io/geppetto/'
  license :oss

  app 'geppetto/Geppetto.app'
end
