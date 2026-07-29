class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.24.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.24.0/codelore-v0.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "0008dfa6e929ab48ea9161809b21b44c968a3ac6cb0f2114d4675789fad82335"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.24.0/codelore-v0.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "9980c2f79ac468b6d03f7e2de7931939ff345d724c25bfb6d7c353a8ebb23c06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.24.0/codelore-v0.24.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2fba020743ffbd9f8ef179f2f71eb175e502f42f7ab3e08c4a713c0f2731304e"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.24.0/codelore-v0.24.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db31a82c6e336cbc3a991b2e085aa8f37469487b13d250fbcc47c04ee7912f4c"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
