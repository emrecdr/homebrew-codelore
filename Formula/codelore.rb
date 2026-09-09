class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.30.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.30.0/codelore-v0.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "00abc7563db78c9abb16f861fc41312d6de3bdda223070ae67b4e96fd26f584c"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.30.0/codelore-v0.30.0-x86_64-apple-darwin.tar.gz"
      sha256 "7cb243043cef9857056141a84c35880d4dd14bb58f24d6c65f73632793e62491"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.30.0/codelore-v0.30.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b09c3e9ac2c49a29aa06c49887c2e5dd25cfe54a0534d508da9a7177af7f1608"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.30.0/codelore-v0.30.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "11b2453f5ea94789b9eadf99f50634126d139de7f441d19a88874a60ccf0ee1f"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
