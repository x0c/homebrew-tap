class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.7.4/subswap-v1.7.4-aarch64-apple-darwin.tar.gz"
      sha256 "68b859e6ed3ce2ee9b991a018efa88080b0722286e0fef97f3a257fed35a9d84"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.7.4/subswap-v1.7.4-x86_64-apple-darwin.tar.gz"
      sha256 "e9abf247f949332d163a8654d281841ec55da4295ff31a8c232e93c25fadda51"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.7.4/subswap-v1.7.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "88d9fc7b8532684d61f64e70cfdc4ca7ea2193a107f8060ee8396a2152418035"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.7.4/subswap-v1.7.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29cf06e76ae0ece3fe5cadedeb330ea8701354812e5becc6a25074f272922671"
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
