class Dmenv < Formula
  desc "The stupid virtualenv manager"
  homepage "https://github.com/TankerHQ/dmenv"
  url "https://github.com/TankerHQ/dmenv/archive/v0.15.0.tar.gz"
  sha256 "ac2ee8baa7959207584919bd046f36fc8f9ff8cfedb89932234cb7d82222c532"
  head " https://github.com/TankerHQ/dmenv"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/dmenv", "--version"
  end
end
