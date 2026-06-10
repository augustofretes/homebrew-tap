class RustyTube < Formula
  desc "Terminal-based YouTube Music player written in Rust"
  homepage "https://github.com/augustofretes/rusty-tube"
  url "https://github.com/augustofretes/rusty-tube/archive/a16811bc8175f2ebd6578e72b671de0053f3af1b.tar.gz"
  version "0.1.1"
  sha256 "25680d37056ce8c6bed9ed31065a562dc204180627df9ff2a8c31928b945e1d7"
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
