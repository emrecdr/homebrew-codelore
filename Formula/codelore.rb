class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.19.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.19.0/codelore-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "422d657cf330fcb79235369c97eaa0a29a206f10f7573c95b2b5c0527c67df3b"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.19.0/codelore-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "f47ce4621baf457387579205987a05d5773274a191d6b56b532b4a26a33293a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.19.0/codelore-v0.19.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "88b497171be2ca4a4a480117cd84d80cc0e54484ea68446bbd4841df5d81cbd1"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.19.0/codelore-v0.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "be619428c5ae9d23c89f0e4f1d5c44bff5d1eb1e24b1d88a13e4e8e915c732c8"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
