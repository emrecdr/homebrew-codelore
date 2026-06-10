class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.3.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.1/codelore-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "5ac69cbbfcd14384190afe2859660b5069d246584e19227801965a4306d449c7"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.1/codelore-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "2b4a644c068a6e8b554cd70aace28fc100d9a972d8688f17c8bfc8ccedc7adcb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.1/codelore-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe496acd01e0b2c575700219be6c887cdadcff4d1d9924ef2cc7473e5693e7ee"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.1/codelore-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1cfb059987a705ddff1684341f3d0f16ba1de7e5fb8f5f03cf386e3531f2d7cd"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
