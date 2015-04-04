class Xctester < Formula
  homepage "https://github.com/neonichu/xctester"
  url "https://github.com/neonichu/xctester.git", :tag => "0.1.3"
  head "https://github.com/neonichu/xctester"

  depends_on :xcode => ["6.3"]

  def install
    prefix.install "bin"
    prefix.install "code"
  end

  test do
    system "#{bin}/xctester", "--version"
  end
end
