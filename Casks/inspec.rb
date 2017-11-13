cask 'inspec' do
  version '1.44.8-1'
  sha256 '343da0f4c68191fd5938a8847a03b0cc85ef2f634af9e7d0050f88ce77a5a295'

  # packages.chef.io was verified as official when first introduced to the cask
  url "https://packages.chef.io/files/stable/inspec/#{version.major_minor_patch}/mac_os_x/10.12/inspec-#{version}.dmg"
  appcast 'https://github.com/chef/inspec/releases.atom',
          checkpoint: 'e18a84b8ee52e5ac2d2e0558324a6d9cb1e9cb058c9e5c2f1a6ccdddd0918d6f'
  name 'InSpec by Chef'
  homepage 'https://www.inspec.io/'

  pkg "inspec-#{version}.pkg"

  # As suggested in https://docs.chef.io/install_dk.html#mac-os-x
  uninstall_postflight do
    system_command '/usr/bin/find',
                   args: ['/usr/local/bin', '-lname', '/opt/inspec/*', '-delete'],
                   sudo: true
  end

  uninstall pkgutil: 'com.getchef.pkg.inspec',
            delete:  '/opt/inspec/'

  zap delete: '~/.inspec/'
end
