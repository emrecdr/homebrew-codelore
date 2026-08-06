class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.27.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.0/codelore-v0.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "45092d6687fc0636ec4bf78958738c1eacc0189f5f6ab73095726c3e24cf8920"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.0/codelore-v0.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "d40cec67bbee07d25b43d575f00c3dca8de0bb74f9786efd55d9772e18b7124e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.0/codelore-v0.27.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4daeda7e66d58f205f982865901a3ad9d9642663ac6d9af63e42abd6059d1794"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.0/codelore-v0.27.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "724aa20f8513b06aacca1f9cb9e343c24fdbd0dcdaa58f27b913cd93c09b3ca6"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
