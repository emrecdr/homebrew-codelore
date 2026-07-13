class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.17.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.17.0/codelore-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "7de3ede786ebc9f9186820c150c55c4d5318b0afd762edf3f5dfe0543c407ad0"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.17.0/codelore-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "5df5855cfa3d8f523b11cd62e8e448c80443c159be6d768c6bece7d1ccaf8df6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.17.0/codelore-v0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cce53147be1884cca1050af85f2c6c89e9429fda2718daf561bfc60a8ba645e4"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.17.0/codelore-v0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10184758e76b54acbd89d919042548c6a7a81db73c4789532323d0887371314f"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
