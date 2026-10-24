class Todography < Formula
  desc "Checks and queries a map of components kept as Markdown files"
  homepage "https://github.com/mkmik/todography"
  url "https://github.com/mkmik/todography/archive/refs/tags/v0.15.0.tar.gz"
  sha256 "e925dc0f1b6b7bca740e0aef364c2702ce75f69143b2cdfef4692ea54be62d6f"
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
