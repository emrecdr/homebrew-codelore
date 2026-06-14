class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.5.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.5.1/codelore-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "4ab8f1c903663abc2c127c9f3a70974b95440a80bfb34771aa111a8af23e1cf3"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.5.1/codelore-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "247c06fcb936f5fddc0e78868225373d82441947afa0de6db3149e6b058ea156"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.5.1/codelore-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fcdc8aa76a4a6f15c994639a5b32289c4ae46f20964e8cefa451f747552bf269"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.5.1/codelore-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d85bac3e187292ecdc02f097f678ce267c24bc574c9d4d0b96b32883912cf5b4"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
