class Ruplacer < Formula
  desc "Find and replace text in source files"
  homepage "https://github.com/TankerHQ/ruplacer/"
  url "https://github.com/TankerHQ/ruplacer/archive/v0.4.1.tar.gz"
  sha256 "6dd0e391cb94ee2dc62eacc99d6a9310343b5ba85258454057b2d1e5bf9e01d7"
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
