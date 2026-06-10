class RustyTube < Formula
  desc "Terminal-based YouTube Music player written in Rust"
  homepage "https://github.com/augustofretes/rusty-tube"
  url "https://github.com/augustofretes/rusty-tube/archive/refs/tags/v0.1.2.tar.gz"
  version "0.1.2"
  sha256 "9fb2cbede8aaa2d743d62411bbfc6e14a1c18e26beb8b3d1f3097ba2595115af"
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
