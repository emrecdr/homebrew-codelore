class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.3.4"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.4/codelore-v0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "074aeb2a88aabc9778aa4424ea1abe8701701a6659f3f4af3503f7a3dd0d4684"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.4/codelore-v0.3.4-x86_64-apple-darwin.tar.gz"
      sha256 "2c01b45d803a26ddaa75da789b8266b89938107762f07391655781d58610ea3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.4/codelore-v0.3.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e29c981bd4ff09c319c13abde4ca79a0aa059626d254434e8b4f6874637bbb9a"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.3.4/codelore-v0.3.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7af52bdfc35270819fca9bd8f09b19afbf4ab56655aa1c704fc272fda27ed0e4"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
