class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.5.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.5.0/codelore-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "95f4c38d26355669cb062cdd24e2b9a5307d9e3778d7d84cf9b81ea9eeb02eaa"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.5.0/codelore-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "493fd4be122bffdf0e1f99ac81a7958284abad4e67a667ff5109f17f3f09f491"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.5.0/codelore-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7b182245d187c035737206ce91a46bb4639d9afd13e98c283e4ded87a9a69e13"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.5.0/codelore-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "307e98d54e969d177de6255e3c881eb680d41eecadeb9de5880b1494a71ce8e9"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
