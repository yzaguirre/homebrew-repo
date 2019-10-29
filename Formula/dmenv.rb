class Dmenv < Formula
  desc "The stupid virtualenv manager"
  homepage "https://github.com/TankerHQ/dmenv"
  url "https://github.com/TankerHQ/dmenv/archive/v0.18.0.tar.gz"
  sha256 "5ca5055b94f17cf2fb9bd83abf179d54069b339e181f9ddd6d9f4fd941490397"
  head " https://github.com/TankerHQ/dmenv"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/dmenv", "--version"
  end
end
