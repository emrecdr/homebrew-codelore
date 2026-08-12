class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.27.4"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.4/codelore-v0.27.4-aarch64-apple-darwin.tar.gz"
      sha256 "bd5258b41684d1b361bc2aad975ece3aef9d41c4280490b9b53d21aa0abfa63d"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.4/codelore-v0.27.4-x86_64-apple-darwin.tar.gz"
      sha256 "b66db6d6b9e2cb33181b29cc89e7414577c80d8886706d1168b555d1ae56a99f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.4/codelore-v0.27.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dcad8fd6f8b12b1531fbaa043011decec1bdf4ddf43fdb3ef928abb5b800bf7a"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.4/codelore-v0.27.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31480326966a0e91b020fd2addd12c1cfedc8273a218b99f815c1ca0edda69c3"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
