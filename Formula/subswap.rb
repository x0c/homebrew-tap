class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.4.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.12/subswap-v1.4.12-aarch64-apple-darwin.tar.gz"
      sha256 "939fdd9beeeb3c84914a7fd9dd08a2c6e0d504b915f3c1ed57fecdbb1395d5d9"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.12/subswap-v1.4.12-x86_64-apple-darwin.tar.gz"
      sha256 "10367b2b647a6bd38a5990aa9df55f527a0e31c2497bdec39c3213d318ee5831"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.12/subswap-v1.4.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "289dc4cd29fa1e47ce9a7fda8cd2da3bebb35c7eb2968e2fb2cd6e586acb9b18"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.12/subswap-v1.4.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "260f3b1eea7a2dfa70bc39dae008ff1fec32d547cf773ea2e8fc14045b34cfd7"
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
