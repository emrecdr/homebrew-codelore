class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.22.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.22.0/codelore-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "5e0c8fd1858d46293f1dcb92c342e4926656b3e476dc1e266119f75f5b80cfa5"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.22.0/codelore-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "f617bfb6033482424f782ed1c9d8d5c67608f2dbd8d08025d8d3816dfe0dd293"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.22.0/codelore-v0.22.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d6e6934ff1e4398d0bad5a3a7b47a88d056433f3f654cfbfc4beaac95a349081"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.22.0/codelore-v0.22.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "513198723a477e5ecd3f640c3b853b71ecbe13d5c0048def61656f4cb049578a"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
