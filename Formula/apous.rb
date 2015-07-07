class Apous < Formula
  homepage "https://github.com/owensd/apous"
  url "https://github.com/owensd/apous.git", :tag => "v0.1.1"
  head "https://github.com/owensd/apous.git"

  depends_on :xcode => ["7.0"]

  def install
    `xcodebuild`
    prefix.install "bin"
  end

  test do
    system "#{bin}/apous"
  end
end
