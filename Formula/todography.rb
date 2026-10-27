class Todography < Formula
  desc "Checks and queries a map of components kept as Markdown files"
  homepage "https://github.com/mkmik/todography"
  url "https://github.com/mkmik/todography/archive/refs/tags/v0.17.0.tar.gz"
  sha256 "1bcf54874c64ce3270e3918af07bc26818c24d86ab06ec42f064566c700a0e7e"
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
