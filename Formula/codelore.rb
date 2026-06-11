class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.4.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.1/codelore-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "6737ee9402a800c94e49d6e110f5b8f6dc117f4b5169cdc6a6ce5e04f66d2093"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.1/codelore-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "0e04a12f3f9f9c86d540fa7851cb543455e3be709aada091f38eb795a7de11f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.1/codelore-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4d429e379c129ce2150a54e618a789a2e455ca1eff36ad2741ea513a00808541"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.1/codelore-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "25d200027094500a407a3b8b11de1db4c4fe36dc8b9d6c13a7f9a7496bef89b3"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
