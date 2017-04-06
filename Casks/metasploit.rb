cask 'metasploit' do
  version '4.14.8,20170404092313'
  sha256 'ad6c0b75c8d7c7fd61ed1fb58cbad52e4cdb083b43a541ad6c539120a7db8505'

  url "https://osx.metasploit.com/metasploit-framework-#{version.major_minor_patch}+#{version.after_comma}-1rapid7-1.pkg"
  appcast 'https://osx.metasploit.com/LATEST',
          checkpoint: 'a854a76131d1ecdfa40113120cc198a875dbb5fc0d99afc7cfbf863b53e8a09b'
  name 'Metasploit Framework'
  homepage 'https://www.metasploit.com/'
  gpg "#{url}.asc", key_id: '2007B954'

  depends_on formula: 'nmap'

  pkg "metasploit-framework-#{version.major_minor_patch}+#{version.after_comma}-1rapid7-1.pkg"
  binary '/opt/metasploit-framework/bin/metasploit-aggregator'
  binary '/opt/metasploit-framework/bin/msfbinscan'
  binary '/opt/metasploit-framework/bin/msfconsole'
  binary '/opt/metasploit-framework/bin/msfd'
  binary '/opt/metasploit-framework/bin/msfdb'
  binary '/opt/metasploit-framework/bin/msfelfscan'
  binary '/opt/metasploit-framework/bin/msfmachscan'
  binary '/opt/metasploit-framework/bin/msfpescan'
  binary '/opt/metasploit-framework/bin/msfremove'
  binary '/opt/metasploit-framework/bin/msfrop'
  binary '/opt/metasploit-framework/bin/msfrpc'
  binary '/opt/metasploit-framework/bin/msfrpcd'
  binary '/opt/metasploit-framework/bin/msfupdate'
  binary '/opt/metasploit-framework/bin/msfvenom'

  uninstall pkgutil: '.*metasploit.*',
            delete:  '/opt/metasploit-framework'
end
