require 'formula'

class Chswift < Formula
  homepage 'https://github.com/neonichu/chswift#readme'
  url "https://github.com/neonichu/chswift.git", :tag => "0.0.2"
  head 'https://github.com/neonichu/chswift.git'

  def install
    system 'make', 'install', "PREFIX=#{prefix}"
  end

  def caveats; <<-EOS.undent
    Add the following to the ~/.bashrc or ~/.zshrc file:

      source #{opt_share}/chswift/chswift.sh

    To enable auto-switching of Swifts specified by .swift-version files,
    add the following to ~/.bashrc or ~/.zshrc:

      source #{opt_share}/chswift/auto.sh
    EOS
  end
end