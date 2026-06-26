class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.9.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.9.3/codelore-v0.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "612aaaf4e756b30f9bf43395b4a52de954fd99b9e1eb70442ad1808b596bacd7"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.9.3/codelore-v0.9.3-x86_64-apple-darwin.tar.gz"
      sha256 "73305a52a8c336e12b4fe51a5efa325f99c98c0abc489522231a3fe95ea27f32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.9.3/codelore-v0.9.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46057d6e41368e52b9ebaa791eda38e9fbb5303bc5a6c2a4dac2d3f7f8d2cf20"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.9.3/codelore-v0.9.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f16db385180a446983e1adcc02d3c47c6de92b80cf5a5fdc1363c6bddb3e6a9a"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
