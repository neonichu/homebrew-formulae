class ElectronicMoji < Formula
  homepage "https://github.com/neonichu/electronic-moji"
  url "https://github.com/neonichu/electronic-moji.git", :tag => "0.0.2"
  head "https://github.com/neonichu/electronic-moji.git"

  depends_on 'chswift'
  depends_on :xcode => ["7.2"]

  def install
    system 'chswift-exec', '2.2', '--', 'make'
    system 'mkdir', '-p', "#{prefix}/bin"
    system 'cp', '.build/debug/electronic-moji', "#{prefix}/bin/electronic-moji"
  end

  test do
    system "#{bin}/electronic-moji", "--version"
  end
end
