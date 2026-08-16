class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.5.0/subswap-v1.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "d18178b8248e0c28a81642ff14b41eaa1dd8f11e366fa0d6af0e43fa85fdeb4b"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.5.0/subswap-v1.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "734df0a862587932c4de27cf23124edf256d8a468ac4d45646113b4a8aad9d2b"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.5.0/subswap-v1.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "57d37b3d2e67cc9549bc5d7b365f28abb9c56b490cbf08f6e4d254cb2249b95e"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.5.0/subswap-v1.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1590a24ac4e046ffbc73351dfa4960cb293ce0c25dbda4a8b714a85670961f1"
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
