class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.9.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.9.1/codelore-v0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "cc4cfea80558c6f81c6a345eb874a88924cceb1d06cadfaba8125c21b2838bb6"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.9.1/codelore-v0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "6a0e8fca2367105923b10e1d82e0caba2eb6c9133bc35b0f9e49e635dc5ff920"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.9.1/codelore-v0.9.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be6ff5a60a13ede8f64ce97e9dc80a9f772c9c159cf380bb49b310cf45da79c2"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.9.1/codelore-v0.9.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f6db5ba694cdbfe9f984ebf052308c1a4e8fe540be73e25dbe408330572e91d"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
