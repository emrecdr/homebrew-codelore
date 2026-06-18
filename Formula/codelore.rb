class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.8.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.8.0/codelore-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "a85eb635118d3f4643905c4f40327a87ffd2a3dc908f2af570642b2ed6206932"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.8.0/codelore-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "02d345bb07721da3c0f635af66e35ff12ee4ba188f7ee88a511273ac5df56be2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.8.0/codelore-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d89c7db96861a25a572cdf1c436b10531daea0235dac4f94c75354283aea4789"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.8.0/codelore-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99fd7d64fa6025757e790423845cbf767c55ce83ce208e3f8efd2cbf620f3f4f"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
