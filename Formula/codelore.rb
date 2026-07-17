class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.20.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.20.0/codelore-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "f8f92071f46e1464f8631fdb58c4b65be78dedad27f5ef0ebfed5de65a7a05bb"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.20.0/codelore-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "6108b2e9d7af6b0a00848d6a8546185efdfdd358e674e12c9585c621df4b9bdd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.20.0/codelore-v0.20.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ffbee91d5b5670a5aaf809599fe48e25e70e29eb5e25a4170c8bdafe3518a934"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.20.0/codelore-v0.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "69b1e136b07e1a7fcd20387a4ce543e1a2b2a3e965e34dcc2d956716f3948572"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
