class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.13.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.13.0/codelore-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "624cc8d2b003f5a12af584a1684f36ff9aa82d7cc026f106f9dbe06d7ff077d2"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.13.0/codelore-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "60098962d62d73db35c320660de83500d454ccce4504a9035ce0f8b8e7ed820c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.13.0/codelore-v0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "24695f7ff700cde7ca49477f2200902b0ed7c062c4457c17ec4555e9b514d754"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.13.0/codelore-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bfc57b43749a45be5b180f9b5b7a517fd7d46ba3eba1d55a3cdc1cc24e66d4fb"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
