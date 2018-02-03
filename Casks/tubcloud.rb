cask 'tubcloud' do
  version :latest
  sha256 :no_check

  url 'https://updates.tubcloud.tu-berlin.de/clients/tubCloud-latest.pkg'
  name 'tubCloud Client'
  homepage 'https://www.tubit.tu-berlin.de/menue/dienste/daten_server/tubcloud/tubcloud_sync-client/'

  depends_on macos: '>= :yosemite'

  pkg 'tubcloud-latest-macos.pkg'

  uninstall pkgutil: 'de.tu-berlin.tubit.owncloud'
end
