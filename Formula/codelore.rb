class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.25.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.25.1/codelore-v0.25.1-aarch64-apple-darwin.tar.gz"
      sha256 "f9d0c4102be267ced5bdbb8c2271db5abbb9d88d506fc87b979b1e1854c7702c"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.25.1/codelore-v0.25.1-x86_64-apple-darwin.tar.gz"
      sha256 "fb059cb51fe37cf43dbed0ed2badda60934a753171f32b15f9b6a336565c5da7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.25.1/codelore-v0.25.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3389bf9129c78ab512eb7bd8bb91661acdfb4f821b776bcc35bbcf6309530c27"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.25.1/codelore-v0.25.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "91a8a8c03b9c2ecf0bfcc38378f1c090c6627c735e19f082b18cbd3b8d1392b3"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
