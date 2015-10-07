cask :v1 => 'xamarin-studio' do
  version '5.9.4.5-0'
  sha256 '852aff8d1760c209fd1e6568e692565f38c46cb2265121c45f8b6d8bd8562edf'

  url "https://download.xamarin.com/studio/Mac/XamarinStudio-#{version}.dmg"
  name 'Xamarin Studio'
  appcast 'https://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => '5b5605346c740b76fadffe206ba0bd87fca32639f425e55dc514b4198a999386',
          :format => :unknown
  homepage 'https://xamarin.com/studio'
  license :gpl

  app 'Xamarin Studio.app'
end
