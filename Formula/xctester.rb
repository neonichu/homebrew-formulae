class Xctester < Formula
  homepage "https://github.com/neonichu/xctester"
  url "https://github.com/neonichu/xctester.git", :tag => "0.2.0"
  head "https://github.com/neonichu/xctester.git"

  depends_on :xcode => ["7.0.1"]

  def install
    prefix.install "bin"
    prefix.install "code"
  end

  test do
    system "#{bin}/xctester", "--version"
  end
end
