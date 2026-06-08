class RustyTube < Formula
  desc "Terminal-based YouTube Music player written in Rust"
  homepage "https://github.com/augustofretes/rusty-tube"
  url "https://github.com/augustofretes/rusty-tube/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d569fe821a48abe44d998f18cc0473597d1ce2cc205cad62261bb31a7c626cdc"
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
