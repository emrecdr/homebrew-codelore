class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.9.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.9.2/codelore-v0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "621cd1338a04869ba165166b2ceaf36116b6e5b388d55b1f3552ef74e9ca6f25"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.9.2/codelore-v0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "c32d24fcc145588cccf40d55dd4d77071be534a2918dc0557e31f01976b5b2f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.9.2/codelore-v0.9.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eaa3330540deebb63d9ff7c0d5550a68264db3f635eca48b1bef099919357b80"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.9.2/codelore-v0.9.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dfceecffe250fd42ff89865ab97fe72bc10cacc0420e4f7c2662cdb739b26371"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
