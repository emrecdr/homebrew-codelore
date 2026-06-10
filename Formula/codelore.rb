class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.3.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.3/codelore-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "1636dbff1c0a4121b3da9012f5efaa64fbece85126f3e3aefb73a04268dba116"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.3/codelore-v0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "ca9a7e5be95492131487d064d4b480ac4dfc719e7f8461a1884d773f9abcdce7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.3/codelore-v0.3.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5da5c8279ab2a9ec90cc45a736dc4e5cd7e79161fad5b13acaeb8055f5c9f17d"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.3/codelore-v0.3.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9512399989f7aae067e866af526c1e5abcaa45985fd23c5499daae1943ccdeca"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
