class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.4.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.10/subswap-v1.4.10-aarch64-apple-darwin.tar.gz"
      sha256 "ba4ae9df469b883eb7898e35753dd5e0e29f464bc66e251953e29be15896b307"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.10/subswap-v1.4.10-x86_64-apple-darwin.tar.gz"
      sha256 "a3addca9f286f9613502138df6976b5f89203c5d3f22ecc703974c96bf053d42"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.10/subswap-v1.4.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bdfad974d5b97f823d962047b44f75f769e47f1200de7bcddd088236183f6646"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.10/subswap-v1.4.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9364942cb0f6e9f50250cc627ce047efdbefdb8682c95099291748c1cdda2386"
    end
  end

  def install
    bin.install "subswap"
    bin.install "subswapd" if File.exist?("subswapd")
  end

  test do
    assert_match "subswap", shell_output("#{bin}/subswap --help")
  end
end
