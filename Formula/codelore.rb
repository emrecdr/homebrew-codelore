class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.15.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.15.0/codelore-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "e5a31a6f4d621dc546d480cafda2085b131820a5375fb9070b3b034dd6e9132e"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.15.0/codelore-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "0e4bc4df291b00d6b6da54be1319d2a6656380f5189ff372fa3b9d312b4ad6b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.15.0/codelore-v0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "caead21acbf7ee4fb42a043b4f84ecf0b709966070d2158abd5c4f520fa4aced"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.15.0/codelore-v0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0344996b2a859f9bcbfd5d1e34185994d069ac419a4bc99fdc265f39f97bd325"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
