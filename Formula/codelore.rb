class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.6.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.6.0/codelore-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "141d84d5309de963629af106ad0f73b953a35118f5ffe0454725f1e1e36a63f5"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.6.0/codelore-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "f268dca650f564ad6e2debdd70b9178642e22db626bed889630ca0ed636bff76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.6.0/codelore-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "37d52c4036008e9ae7edad15bbd8317c118aa09e90940282e47007c7f5587e79"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.6.0/codelore-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8391e028215567e3c027c3f834185a38092c7589ad3f468e9ac8ebd31934d5c0"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
