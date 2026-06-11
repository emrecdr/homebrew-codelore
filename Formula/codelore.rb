class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.4.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.0/codelore-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "52ce046e2adb00538916baf299c0c6274a15cee7201999ddaeb303b8b8d7be97"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.0/codelore-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "5711bbb54c5bde0c7214cfe55e74a8735e7f64e6e4bf30f549cea8c28f69336f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.0/codelore-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d371e1c54d183cbb8f2fb6e1a17e2f5c4a393918add60f1c89fded17e9f2ac8"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.4.0/codelore-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e298ce491a1fdd9fd1431d2ca978c81dcb792312a42d68fb46e074477ddd8638"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
