class RustyTube < Formula
  desc "Terminal-based YouTube Music player written in Rust"
  homepage "https://github.com/augustofretes/rusty-tube"
  version "0.1.2"
  license "MIT"
  head "https://github.com/augustofretes/rusty-tube.git", branch: "main"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/augustofretes/rusty-tube/releases/download/v0.1.2/rusty-tube-v0.1.2-aarch64-apple-darwin.tar.gz"
    sha256 "0874540edb11dfd8f8e583fb75f3315f3882702332a7f8a9ce09db182ab6b4e7"
  else
    url "https://github.com/augustofretes/rusty-tube/archive/refs/tags/v0.1.2.tar.gz"
    sha256 "9fb2cbede8aaa2d743d62411bbfc6e14a1c18e26beb8b3d1f3097ba2595115af"

    depends_on "rust" => :build
  end

  depends_on "ffmpeg"
  depends_on "yt-dlp"

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "rusty-tube"
    else
      system "cargo", "install", *std_cargo_args
    end
  end

  test do
    assert_path_exists bin/"rusty-tube"
  end
end
