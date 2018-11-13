class Dmenv < Formula
  desc "The stupid virtualenv manager"
  homepage "https://github.com/TankerHQ/dmenv"
  url "https://github.com/TankerHQ/dmenv/archive/v0.6.0.tar.gz"
  sha256 "73421c903bea7a9d7ed7ee603d17d0439622af925073268a3359baeb85d5c326"
  head " https://github.com/TankerHQ/dmenv"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/dmenv", "--version"
  end
end
