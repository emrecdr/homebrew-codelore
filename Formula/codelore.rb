class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.11.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.11.0/codelore-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "3b6107a41c1b265fab10b82e3ae35af5f891334814f1f221fcd4ca8434d751fe"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.11.0/codelore-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "bdeaca211ff8bad967a6c31629877e2bda12a4e50190b95043635b8e3224e893"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.11.0/codelore-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7794298d3fbb2d01c5ded34780c8591309bc6a174ad3f1659dd8f01352cea83"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.11.0/codelore-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e52ce885c260e63f820eb898346ea2d1386018df6282fde13ff4d910e5a9d28"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
