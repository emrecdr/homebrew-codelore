class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.3.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.2/codelore-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "dbed4ae4f36fa63688670058134fe69ad56ad286821df173657c0f98d8c429b3"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.2/codelore-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "f55671028535d64fb0fc07836c9a43389b1283eb04ed3d57fa221d2ebbc302ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.2/codelore-v0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "35c2c2a5b4c86a4f8da4b48b2b57c6c9cca45d5842ebd7ca4c9375fea889ed62"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.2/codelore-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "406068b7488e21e3d7ca7798bf4b592f0ec45a2737988a8b00a1b88a038dd615"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
