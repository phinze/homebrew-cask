cask 'anaconda' do
  version '5.1.0'
  sha256 'be705b3c3a0ca29ee32ce7658890bb5edb32a9eadedc09dec3d7e3cfbfd23cb7'

  # repo.continuum.io/archive was verified as official when first introduced to the cask
  url "https://repo.continuum.io/archive/Anaconda3-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Anaconda'
  homepage 'https://www.anaconda.com/what-is-anaconda/'

  depends_on macos: '>= :lion'
  container type: :naked

  installer script: {
                      executable: "Anaconda3-#{version}-MacOSX-x86_64.sh",
                      args:       ['-b', '-p', "#{HOMEBREW_PREFIX}/anaconda3"],
                      sudo:       true,
                    }

  postflight do
    set_ownership "#{HOMEBREW_PREFIX}/anaconda3"
  end

  uninstall delete: [
                      "#{HOMEBREW_PREFIX}/anaconda3",
                      '/Applications/Anaconda-Navigator.app',
                    ]

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.io.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.python.sfl*',
             ]

  caveats do
    path_environment_variable "#{HOMEBREW_PREFIX}/anaconda3/bin"
    files_in_usr_local
  end
end
