cask :v1 => 'ios-lockscreen' do
  version :latest
  sha256 :no_check

  name 'iOS Lockscreen'
  homepage 'http://littleendiangamestudios.com/project/ios-7-screen-saver/'
  url 'http://dlstatsios7.site90.net/download.php', :referer => "#{homepage}"
  license :unknown    # todo: improve this machine-generated value

  screen_saver 'iOS Lockscreen.saver'
end
