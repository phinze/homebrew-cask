require 'formula'

class BrewCask < Formula
  homepage 'https://github.com/phinze/homebrew-cask/'
  url 'https://github.com/phinze/homebrew-cask.git', :tag => 'v0.3.5'
  head 'https://github.com/phinze/homebrew-cask.git'
  version '0.3.5'

  skip_clean 'bin'

  def install
    prefix.install_p 'lib', 'rubylib'
    inreplace 'bin/brew-cask.rb', '/lib', '/rubylib'

    prefix.install 'Casks', 'bin'
    (bin+'brew-cask.rb').chmod 0755
  end
end
