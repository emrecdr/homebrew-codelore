class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.9.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.9.0/codelore-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "f13c4eb3b1b9a720f14333e8e1941830c473bc77fc5349865dfc9f1615359270"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.9.0/codelore-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "d32190a91ca892059a2c98275856248e8d7e54deaf33877fcff9abeb97ec67a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.9.0/codelore-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "65d91a3edc44b942c17f157f5010f73288f9aa30f0670c05b721e451da27eaca"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.9.0/codelore-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7cac9c382a2b951030461badb806a8dfb542474961ebb7cac4fffb8e8b3b9258"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
