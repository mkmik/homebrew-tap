class Todography < Formula
  desc "Checks and queries a map of components kept as Markdown files"
  homepage "https://github.com/mkmik/todography"
  url "https://github.com/mkmik/todography/archive/refs/tags/v0.12.0.tar.gz"
  sha256 "58f1981a19cfcf6724c81e7620002a22be98356a8af4bd98da4bfa9394b0876c"
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
