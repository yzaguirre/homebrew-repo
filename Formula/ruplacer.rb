class Ruplacer < Formula
  desc "Find and replace text in source files"
  homepage "https://github.com/TankerHQ/ruplacer/"
  url "https://github.com/TankerHQ/ruplacer/archive/v0.3.0.tar.gz"
  sha256 "34c3211f09774ef593fd2b906bb06019217a60378cd7c43fae4bde81174be732"
  head "https://github.com/TankerHQ/ruplacer"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    (testpath/"foo.txt").write("this is foo")
    system "#{bin}/ruplacer", "foo", "bar", testpath
  end
end
