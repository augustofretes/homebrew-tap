class RustyTube < Formula
  desc "Terminal-based YouTube Music player written in Rust"
  homepage "https://github.com/augustofretes/rusty-tube"
  version "0.1.3"
  license "MIT"
  head "https://github.com/augustofretes/rusty-tube.git", branch: "main"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/augustofretes/rusty-tube/releases/download/v0.1.3/rusty-tube-v0.1.3-aarch64-apple-darwin.tar.gz"
    sha256 "9d990600056d736ddd54aa034ec65ee675c62d10b2b8b6057380939a1cc929b7"
  else
    url "https://github.com/augustofretes/rusty-tube/archive/refs/tags/v0.1.3.tar.gz"
    sha256 "7b3200fd46d2e77bb09a4d4eeea0fe824766dc32b1d22524fbcc4df993130af3"

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
