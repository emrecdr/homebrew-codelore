class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.1.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.1.2/codelore-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "1f04bb6ed0e68db09f568edf565c8542155716fd8d3f10ad35453dd71769995d"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.1.2/codelore-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "f9d7daabc3e8c54afa4f1e28fdf65089ba4c48df46505c0982b4a5a3e6b40035"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.1.2/codelore-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "da70ef19f8d8d41edfa691edc5bb1694ccc760e5b8138e9fd9173279757f0eba"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.1.2/codelore-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7856453e47f3c3ac2ec1b7726a3eb2115cd408fdbf39b93b539616d33c745ee"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
