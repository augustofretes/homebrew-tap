class RustyTube < Formula
  desc "Terminal-based YouTube Music player written in Rust"
  homepage "https://github.com/augustofretes/rusty-tube"
  url "https://github.com/augustofretes/rusty-tube/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "cb9c860ac6d19ada40fe28c97d68369af40aeec33ca7cfec874bf1fcbeb46e84"
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
