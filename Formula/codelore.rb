class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.3.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.0/codelore-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "8908196028489cb72b0d8b89011ea08bc6d75efc80236016dfaffa8cab14313d"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.0/codelore-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "bf9377d953c22175d3268e63b5529f444edcf5f398aedc87f87474b2ab0c92ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.0/codelore-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "04495874ca6397b4b942b4a2a2f98a55281b52771d9ca2adcca697ca6beec5f7"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.0/codelore-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "378414adb094a4ed345593aaa8c4066e8f74bd821ea88bedea4d263c48527914"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
