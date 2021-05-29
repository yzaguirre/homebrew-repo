class Ruplacer < Formula
  desc "Find and replace text in source files"
  homepage "https://github.com/dmerejkowsky/ruplacer/"
  url "https://github.com/dmerejkowsky/ruplacer/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "ebc53206d3042291137517cfc2729ed7c774b95fca0e2553427e70da6d73cbf0"
  head "https://github.com/dmerejkowsky/ruplacer"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    (testpath/"foo.txt").write("this is foo")
    system "#{bin}/ruplacer", "foo", "bar", testpath
  end
end
