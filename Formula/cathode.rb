class Cathode < Formula
  homepage "https://github.com/neonichu/cathode"
  url "https://github.com/neonichu/cathode.git", :tag => "0.1.0"
  head "https://github.com/neonichu/cathode.git"

  depends_on 'chswift'
  depends_on :xcode => ["7.2"]

  def install
    system 'chswift-exec', '2.2', '--', 'make'
    system 'mkdir', '-p', "#{prefix}/bin"
    system 'cp', '.build/debug/cathode', "#{prefix}/bin/cathode"
  end
end
