class RustyTube < Formula
  desc "Terminal-based YouTube Music player written in Rust"
  homepage "https://github.com/augustofretes/rusty-tube"
  url "https://github.com/augustofretes/rusty-tube/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2cff99791148ca9054c53af0400916bcb40046b3bbdf8543629714341eef92f2"
  license "MIT"
  head "https://github.com/augustofretes/rusty-tube.git", branch: "main"

  depends_on "rust" => :build
  depends_on "ffmpeg"
  depends_on "yt-dlp"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_path_exists bin/"rusty-tube"
  end
end
