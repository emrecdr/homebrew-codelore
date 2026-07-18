class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.21.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.21.0/codelore-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "56e3f88ebbc36ad54cfd97172625ca00e20feb8c7d5237e86bf5bc0940e08770"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.21.0/codelore-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "975911cdaaddb6d5730e4dd581bb7f438bb47641d25d1950eb3d0b6ef0f5f844"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.21.0/codelore-v0.21.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9762c27ae779272eded31105fd2689dda553191cb888a8ce80bde116dbb3135b"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.21.0/codelore-v0.21.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f35688ff157dc99c26cb035f8409c6d0789a48412a0912f420a7fe7b75d648a4"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
