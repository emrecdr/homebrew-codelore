class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.1.4"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.1.4/codelore-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "ebdb2349a879ea1c8627bad028085c5ee4ced21d6c760769e7c5c43f467d9aa9"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.1.4/codelore-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "3371e22a029f454bbdba3c77dd002ac100c98479b6280c4e05a8710108911f7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.1.4/codelore-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2fd7ad795b583a036380a8fc5c07a97c36a7d8d2b45c69cc2769cd0462031723"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.1.4/codelore-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e6af689906dcf95bc7d5f6773c251946f51186a9f4b57adf332bd94c9387600"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
