class Cato < Formula
  homepage "https://github.com/neonichu/cato"
  url "https://github.com/neonichu/cato.git", :tag => "0.1.1"
  head "https://github.com/neonichu/cato.git"

  depends_on 'chswift'
  depends_on 'cocoapods' => :ruby
  depends_on 'cocoapods-rome' => :ruby

  def install
    prefix.install "bin"
  end

  test do
    system "#{bin}/cato"
  end
end
