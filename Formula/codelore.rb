class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.26.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.26.0/codelore-v0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "b928d242a828c20916fef78c9354ca02b688f4d4c3bc59162a8a87c3ebf38ec5"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.26.0/codelore-v0.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "9bbb3eaba2d9ee190a3f664da1c8516a29eb173f8d141fad55d2361a4f5f7154"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.26.0/codelore-v0.26.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "53bd09969ba9043620d890e354eace4b3e70c215fdfd2b9eeb7b8537ebe8a790"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.26.0/codelore-v0.26.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff35c30f9a3c82b0c0c406c0debbfa39f7f01aa1d2620fb917fbd1cb64c9625e"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
