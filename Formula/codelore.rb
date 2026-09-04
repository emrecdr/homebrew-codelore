class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.29.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.29.0/codelore-v0.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "9967554236e0b59929744a30cc75aa2699bc7721836e22a11839d30c0bda92bd"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.29.0/codelore-v0.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "c095c80c91284bb51999ab8c8079a4bddd6ea240fff34f6e40846edaad357175"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.29.0/codelore-v0.29.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ea7ea9d6b6097b4cc31d08c17259f37995d08f76f8d652f99088b26874c7aa35"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.29.0/codelore-v0.29.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a16d6a826c36a671fc463a1d1b101cc66558263daa47bca1d8905bdbaa0b3d0"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
