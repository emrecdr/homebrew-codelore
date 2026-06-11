class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.4.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.2/codelore-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "5b16576bc8297a8e38a9651fe7f1827aedee8c828d76f27b0367f4d233f25791"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.2/codelore-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "dd81adc509b55cc20f62615d5452588f339270e3c291f950424729fc2087a472"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.2/codelore-v0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4c4f9efac4f647a1b9a8e81a4168e770e6c1304c3819b671c5576b31603e2a50"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.2/codelore-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d37a22cc9227e49ec8cf0eb8eb9bca997eff661eb8026e6a2b6afe4e0287a6a2"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
