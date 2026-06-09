class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.1.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.1.3/codelore-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "f60a795b880a4fc43dadcbabd7845b12574ce0682a4b8ccc8e5add87be4b4546"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.1.3/codelore-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "43c5a40e4d5ff8ea13a4db5a77ef940e9fa3fbe9863c5d791edc3c1651be190c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.1.3/codelore-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6166f4b59a9fb7e9d044e366559aaa895790e7a3b943df7127ebe8c41e3ab3c8"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.1.3/codelore-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b228a24665d22842162d823739085c9b81a4ee0e175a2849343a02ffa4be4cc2"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
