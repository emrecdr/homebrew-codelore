class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.18.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.18.0/codelore-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "d0079ce9bcb244cf58d86796646869cca8dc53441bd3c35928091c808b1cddac"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.18.0/codelore-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "383f9ca1d71e3e2a533542e75a642781014020340b3274030510272ef0a1550a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.18.0/codelore-v0.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9807de2a3245a68ec15fb431e6c8a23c8692148a072099c1765140bec277851c"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.18.0/codelore-v0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e4535e1e326ea4cddabadf47096061e7f27337aff4bbb857a616ee9ef2186ab9"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
