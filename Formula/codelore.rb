class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.7.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.7.0/codelore-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "2a07ff74c1530fe0b19a2b5304c6a8a1603d912eeae2f1b1ce40745019b88d67"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.7.0/codelore-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "379499bbafdfddd488ced53a8739e4e12ca58a759c3323686323a26e975a285b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.7.0/codelore-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "232ff30c6ff976451cdd7d98551c9177d80ec3e4e57b22f4cd6c25c2e83dbf24"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.7.0/codelore-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8521bf83dabca6853f3700344835642484a6a7250116b4ff82a7b2204cf8f51"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
