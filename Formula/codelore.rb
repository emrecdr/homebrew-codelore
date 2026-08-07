class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.27.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.1/codelore-v0.27.1-aarch64-apple-darwin.tar.gz"
      sha256 "ee72525f23ba2a2490e274301f963b70824a49447b98f3e80e6f48d2ea7159f4"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.1/codelore-v0.27.1-x86_64-apple-darwin.tar.gz"
      sha256 "035264a8b0f7446489dcd0b24946df05410e83972152161e2d481dc498450059"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.1/codelore-v0.27.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "55b442cd50e0da22a5ba2e2bcc0ac8618ace15b3b6433ca7b51357377d971705"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.1/codelore-v0.27.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b70fe20f0eaa83219158cb29a62a649ac87f2663f5d9af76c1cb1eca77b849c4"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
