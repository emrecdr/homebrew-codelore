class Codelore < Formula
  desc "Behavioral code analysis CLI — code-maat compatible, written in Rust"
  homepage "https://github.com/emrecdr/codelore"
  version "0.27.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.3/codelore-v0.27.3-aarch64-apple-darwin.tar.gz"
      sha256 "2de1b8012c40b4d74332f921029024524a3f12ef58dfdbe9a7b6b562ca1d06a7"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.3/codelore-v0.27.3-x86_64-apple-darwin.tar.gz"
      sha256 "d6efcfde72d0fccf62392f43137ffff948a6746da88413e6e9aac842c8e855a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.3/codelore-v0.27.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "92fcede20db7896139f99289b104c8298b50c8bb60ed7f51bb92d75efcb6fcbd"
    end
    on_intel do
      url "https://github.com/emrecdr/codelore/releases/download/v0.27.3/codelore-v0.27.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e44f0fdc083ec0b7b2f45b80251eab25ebabe410501bddcbcfa37b359f34aa46"
    end
  end

  def install
    bin.install "codelore"
  end

  test do
    assert_match "codelore #{version}", shell_output("#{bin}/codelore --version")
  end
end
