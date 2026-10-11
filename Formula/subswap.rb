class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.15.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.15.1/subswap-v1.15.1-aarch64-apple-darwin.tar.gz"
      sha256 "c21a33e9638ae0967c0efc10a483c9bd2ce43fde55563b5c066f1d9a00b1f40f"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.15.1/subswap-v1.15.1-x86_64-apple-darwin.tar.gz"
      sha256 "4cba329384aa710402522690106009002a2574dcbd21e26f5c289f76338668c3"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.15.1/subswap-v1.15.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd0b551a064e0286aa3e8b9d72ccf87683cdfcd4391f9108b43be19b789e206d"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.15.1/subswap-v1.15.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "962c77ce5ff52ba984ea9cc54f66bbfe74801a30f47b07f113c31c906892cd65"
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
