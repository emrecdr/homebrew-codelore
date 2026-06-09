class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.2.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.2.1/codelore-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "0508471f23f64e7040fe1b7e5e4ea62fdd2df950a3dee2b034374e644894acee"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.2.1/codelore-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "d864d4ca80cb3e5ac0d810f94f060a1738ba311685e2b6febc165e85fabccc00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.2.1/codelore-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c51fd69f72e249681503f4903dff2c85c564985efcb457ab6c5a8c46306710c"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.2.1/codelore-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "771bffae3fa537facc77a59f3fc26d3e5d230341911d47979d3b322c30985e6a"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
