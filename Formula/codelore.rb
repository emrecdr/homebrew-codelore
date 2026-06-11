class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.4.4"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.4/codelore-v0.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "b033e19c6489fb8732569fee140aab1ee588edfd784ed5be549d7cbce165f954"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.4/codelore-v0.4.4-x86_64-apple-darwin.tar.gz"
      sha256 "a207b7b89efa4fec21b01f473931e2be4131800b6ec65398fdb5e1ac9e444db0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.4/codelore-v0.4.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed2d8498eb61efaf6deed816de29b72f2fdefa34e6f39af661ad2834416d3abb"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.4/codelore-v0.4.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f2aeb525575509425a8a126fa5119fbd47b0dba5608e3649f30620b60b315270"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
