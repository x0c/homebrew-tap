class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.6.4/subswap-v1.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "3ecf2cc25231fabef4f1d9de9c28e58ff5e4e5e86070a8438ddcde643fc11b8b"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.6.4/subswap-v1.6.4-x86_64-apple-darwin.tar.gz"
      sha256 "9fd566669c33e05f5049e0218b884c62b0dd54ca88abb706b100d4ac413aa012"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.6.4/subswap-v1.6.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3d6e3bb13708fe396d53581480a29bf759de954ad2b04aad53e62100a4716ccd"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.6.4/subswap-v1.6.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48f3b4395f6f9dbdcdac5c69e79f93356f3e013d31d9d6b5a93050a9c1496cdd"
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
