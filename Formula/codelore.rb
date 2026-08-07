class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v1/codelore-v1-aarch64-apple-darwin.tar.gz"
      sha256 "7e7b5541db36ba9fe940d0416d8f6214e30ebb55dee8d876bc80a79b3969ea95"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v1/codelore-v1-x86_64-apple-darwin.tar.gz"
      sha256 "c7ae599a30932936ba54fa7a71553be7a58d90d7d6e6f89488a4eb2a1ab4d343"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v1/codelore-v1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e515c3f62801f2b7be094d4d278ccf068fc30cc0675a87f6b6c9a7515e04f83"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v1/codelore-v1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b31f049df4a38983a79301e4e46657465cd62d09698313fb61df78beb22c498f"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
