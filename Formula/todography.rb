class Todography < Formula
  desc "Checks and queries a map of components kept as Markdown files"
  homepage "https://github.com/mkmik/todography"
  url "https://github.com/mkmik/todography/archive/refs/tags/v0.13.0.tar.gz"
  sha256 "78dea199592b00c2621d295b4d7f4f43d61cd30c16695b095bb000433da289e0"
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
