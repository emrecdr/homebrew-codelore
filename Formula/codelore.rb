class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.4.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.3/codelore-v0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "f53d490674b17a2835f900ce662db6b6bb0ce97c86d89f12b554d62dfbe1d826"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.3/codelore-v0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "f86bdba63bf529e8facb1a196f986f55e99b1293dad46c8d8d925ac20870a255"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.3/codelore-v0.4.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c69556407b26416d47e36ac124594241e1bde638aed21437628afacb2d0dc38b"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.3/codelore-v0.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b4df17966e48077905cb64ec928eb69a1c0676aefe310af5668195035118aa86"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
