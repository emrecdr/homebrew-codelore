class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.29.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.29.1/codelore-v0.29.1-aarch64-apple-darwin.tar.gz"
      sha256 "c33f3521a7a7db4ee19df7a32fcd207a5fcc70046ac63d6e431db20b0f1622e9"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.29.1/codelore-v0.29.1-x86_64-apple-darwin.tar.gz"
      sha256 "c4b228fa10dd3be3813e9e3ca70f2429d035193eff5fc82397f7ab184a2828e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.29.1/codelore-v0.29.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b18302a4e6b073c2e4bcd6cf37820b1d1eb8bcfe799802be2ecfb29ba236b47"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.29.1/codelore-v0.29.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1dcc7bdf09f8f0076736bca9b39caccd64b90562dc6688afb69ba5122122c89a"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
