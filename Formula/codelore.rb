class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.23.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.23.0/codelore-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "acbe1dce655a2f86a401bd020c1196580775e4605c59693b2509dab87f048578"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.23.0/codelore-v0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "af6c3b1221d82da875f7c4f636b78803ade8f612adb6561a0263ec1748d33fd6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.23.0/codelore-v0.23.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b6a15f35a4bc3b31f80fcdd15474427fbb93a867be23dbb42d7e6af4656fa8d5"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.23.0/codelore-v0.23.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5445ee5e5c553ced6873d778ce878fa3d439bdd198f2cf73a72208f8b7efcc91"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
