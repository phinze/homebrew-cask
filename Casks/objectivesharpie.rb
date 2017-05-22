cask 'objectivesharpie' do
  version '3.3.0'
  sha256 'a3f0b65895e55fa7628e3727772bed99fa7713cc059b716d3f30266b9b18ce0f'

  url "https://download.xamarin.com/objective-sharpie/ObjectiveSharpie-#{version}.pkg"
  name 'Objective Sharpie'
  homepage 'https://developer.xamarin.com/guides/cross-platform/macios/binding/objective-sharpie/'

  pkg "ObjectiveSharpie-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.ObjectiveSharpie'
end
