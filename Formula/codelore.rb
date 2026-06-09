class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.1.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.1.1/codelore-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "99444e8e22963c0e436d19a15ff14b149aac05d8e3d7e3414b6a2b9b3b4b283c"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.1.1/codelore-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "f9ee8434724944a6940e72f2c6111ff91459c693cbcf7bea771b2a9f329cdec1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.1.1/codelore-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16250de7d53066b00b012b583aa7ba5d6ce9106a7db61c11f8b0561564394a70"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.1.1/codelore-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c33524d7c1af8b29c647a24a5af4918a570e4c73361057f03d8400336fef27c5"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
