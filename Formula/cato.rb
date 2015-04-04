class Cato < Formula
  homepage "https://github.com/neonichu/cato"
  url "https://github.com/neonichu/cato.git", :tag => "0.0.3"
  head "https://github.com/neonichu/cato"

  depends_on 'chswift'

  def install
    prefix.install "bin"
  end

  test do
    system "#{bin}/cato"
  end
end
