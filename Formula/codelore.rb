class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.4.6"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.6/codelore-v0.4.6-aarch64-apple-darwin.tar.gz"
      sha256 "53ee77d1e5081a74a8e05b47fe2d295c868ea920ecca722627fcd1b5fea0d783"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.6/codelore-v0.4.6-x86_64-apple-darwin.tar.gz"
      sha256 "bfe27d6a1672f411f2a9a4c17f348cc2a3fea1fb514fc2f9a11aabd94afef40b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.6/codelore-v0.4.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b969ceda5928acb78222a386f76deb7e37942e9709e7f3553b1c21112717ba1"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.6/codelore-v0.4.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49abaeff8be291acbbae105899ad916413e2b6ea37231fff9190e70ae08681db"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
