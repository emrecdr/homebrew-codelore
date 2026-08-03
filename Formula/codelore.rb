class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.25.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.25.0/codelore-v0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "623715a1a1a8f85d1a29b26f4c283987982482d3f7311f5e3f9dc3157d873c20"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.25.0/codelore-v0.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "46ccbc4c3cb9fbb88ae35824a291ec279ca963796c0ae30c049824be88189b8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.25.0/codelore-v0.25.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "734649a1439602cc31f8f9fafb9cec8a54ec33d45f1b100f16fedfe8ed0447e2"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.25.0/codelore-v0.25.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "861da80b5c5bb81591f979f8640137506d7a38df35df23a62106b9bce5c04633"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
