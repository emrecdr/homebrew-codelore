class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.27.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.2/codelore-v0.27.2-aarch64-apple-darwin.tar.gz"
      sha256 "78b21c188cc4eb5636fde1d00cd08a0c865e74b1a88c0176059fbf1a9f1ecd8f"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.2/codelore-v0.27.2-x86_64-apple-darwin.tar.gz"
      sha256 "fd5fa8d765bd9f8d0134057f484adcbff5c6322beef922197da8a7320ba6ca34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.2/codelore-v0.27.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d67b3ce442395b7ec24bcde6c410f9b97422acdc9587feee165c99e5da6b22ef"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.2/codelore-v0.27.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bba600af3735cc74d2044f90b9aee1464155dc2aed79b007f316ca5099a16b3e"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
