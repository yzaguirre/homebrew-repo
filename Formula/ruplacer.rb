class Ruplacer < Formula
  desc "Find and replace text in source files"
  homepage "https://github.com/SuperTanker/ruplacer/"
  url "https://github.com/SuperTanker/ruplacer/archive/v0.2.3.tar.gz"
  sha256 "86e4d3a63cf6db93788c86c47d1be10ae07599190232922056e18d0b3e5195df"
  head " https://github.com/SuperTanker/ruplacer"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    (testpath/"foo.txt").write("this is foo")
    system "#{bin}/ruplacer", "foo", "bar", testpath
  end
end
