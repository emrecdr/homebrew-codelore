class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.10.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.10.0/codelore-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "36d3cb22dbf3dbbb67d1fbc094a3836b3ac3fdef8a595b15e3750879a4df5f69"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.10.0/codelore-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "e04b422543dcb042de8844f40bde60a23039d7edba6d3ce4283b6f6d073fac87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.10.0/codelore-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e0a0b62a39ac1422160128be8f9f11bbe2aaf09d310f05622965cdf3009f9474"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.10.0/codelore-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "43e3832a17c1a7646726dbb3b8206d2a09358854fb29cf407d37a24ea34efd1f"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
