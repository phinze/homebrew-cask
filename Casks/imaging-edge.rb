cask 'imaging-edge' do
  version '1_0_02,2BqD6b8EKL'
  sha256 'b4eab497dc35974f9d56261c326ef2af538153b27455b93756d980d5786bb379'

  # di.update.sony.net/NEX/ was verified as official when first introduced to the cask
  url "https://di.update.sony.net/NEX/#{version.after_comma}/ied_#{version.before_comma}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://support.d-imaging.sony.co.jp/disoft_DL/imagingedge_DL/mac?fm=en',
          configuration: version.after_comma
  name 'Sony Imaging Edge'
  homepage 'https://support.d-imaging.sony.co.jp/app/imagingedge/'

  pkg "ied_#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.sony.ImagingEdgeVer.1.pkg',
            delete:  '/Applications/Imaging Edge'

  zap trash: [
               '~/Library/Caches/com.sony.Viewer',
               '~/Library/Preferences/com.sony.Edit.plist',
               '~/Library/Preferences/com.sony.Remote.plist',
               '~/Library/Preferences/com.sony.Viewer.plist',
               '~/Library/Saved Application State/com.sony.Viewer.savedState',
             ]
end
