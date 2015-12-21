class Azkaban < Formula
  homepage "https://github.com/neonichu/azkaban"
  url "https://github.com/neonichu/azkaban.git", :tag => "0.1.0"
  head "https://github.com/neonichu/azkaban.git"

  depends_on :xcode => ["7.2"]

  def install
    system 'make', '.build/debug/azkaban'
    system 'cp', '.build/debug/azkaban', "#{prefix}/bin"
  end

  test do
    system "#{bin}/azkaban", "--version"
  end
end
