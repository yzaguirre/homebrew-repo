class Dmenv < Formula
  desc "The stupid virtualenv manager"
  homepage "https://github.com/TankerHQ/dmenv"
  url "https://github.com/TankerHQ/dmenv/archive/v0.16.1.tar.gz"
  sha256 "a0dd709b60238f467e6465441b69b904e5ab7dec6f06c4ff82e6ca640991c4f1"
  head " https://github.com/TankerHQ/dmenv"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/dmenv", "--version"
  end
end
