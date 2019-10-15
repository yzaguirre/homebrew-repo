class Dmenv < Formula
  desc "The stupid virtualenv manager"
  homepage "https://github.com/TankerHQ/dmenv"
  url "https://github.com/TankerHQ/dmenv/archive/v0.17.0.tar.gz"
  sha256 "5e80f3935f5e30ffb9d42b9d7e0f0f7848577a507cf35fe49e3a807091e45328"
  head " https://github.com/TankerHQ/dmenv"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/dmenv", "--version"
  end
end
