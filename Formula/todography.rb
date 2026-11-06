class Todography < Formula
  desc "Checks and queries a map of components kept as Markdown files"
  homepage "https://github.com/mkmik/todography"
  url "https://github.com/mkmik/todography/archive/refs/tags/v0.22.0.tar.gz"
  sha256 "3ad5b2d505369ed45b1d993534d558c55964940356760ae4de056110c72c28d5"
  license "MIT"
  head "https://github.com/mkmik/todography.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"todography", "--help"
  end
end
