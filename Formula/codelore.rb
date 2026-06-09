class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.2.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.2.0/codelore-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "8fa69f1fd40654a0efe7a826887ffeae74a3e798f17fdf34437eb2436201fba2"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.2.0/codelore-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "5cd034512ceb85058c8061152180bc1e57f6605613a08340d86460b91cdfa443"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.2.0/codelore-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aba546e4387119bfd7ad2ddff577f9e1e8b7113b0bfe2a1503f9affeef31d763"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.2.0/codelore-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7611261c1447ae2736a144b1b6d8083c9ba79aaa2a74cd4461bd59004ccda01"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
