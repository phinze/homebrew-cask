cask 'eclipse-installer' do
  version :latest
  sha256 :no_check

  url 'https://eclipse.org/downloads/download.php?file=/oomph/epp/neon/R/eclipse-inst-mac64.tar.gz&r=1'
  name 'Eclipse Installer'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse Installer.app'

  caveats do
    depends_on_java
  end
end
