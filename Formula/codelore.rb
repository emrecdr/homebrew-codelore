class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.16.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.16.0/codelore-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "fde127a4630360f2737c639b098648021803506a2392d96ca4afa28fec1a36fa"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.16.0/codelore-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "0d51f28897a6ebe0733ff6c3c2d9c29d0f2ed6dcc85365e85d412ea5bd4d08e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.16.0/codelore-v0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc852ebc3a8cadc9ca07bcdad214ea4b9af5871d510cc50b7486786cf1add615"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.16.0/codelore-v0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a40b9aaf6c5b1aa5e024923a73c218e617bbfbeb94296ec940f1dfc334a5753c"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
