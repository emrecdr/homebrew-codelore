class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.28.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.28.0/codelore-v0.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "ccde82b8cd6254af6af1714cf904c7de8382aa0df115546df285c7009fa04f28"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.28.0/codelore-v0.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "a07a50062f3aa464b33e6e7326e612ad47430d9d3765e77116942d8b7952ce76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.28.0/codelore-v0.28.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "57fafb4afa6633c3f6614c2af82ee27dc6db6ca7c53c26bd7520487d510fcb22"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.28.0/codelore-v0.28.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28707b70c4fe7a58eae5034271da653087c6af395b12b5484a8c97dee7b35198"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
