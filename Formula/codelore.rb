class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.12.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.12.0/codelore-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "fcb028f52a7845adba488a42723d48d55d3cafbdd7a9307f8eea0a325d423459"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.12.0/codelore-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "0899ca549ab2f99085c8cb37cd7bf89319519401c6d5b7de3b4a27c8010851a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.12.0/codelore-v0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "995e4084ffd75ea65f13621ba45a91c1c3a96362cd8bd1ce77efb09d81630295"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.12.0/codelore-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78ed8122bb77a213587da9f8868bec541d081f6e6c0d9937a906617f5ef29bdc"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
