class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.7/subswap-v1.4.7-aarch64-apple-darwin.tar.gz"
      sha256 "bbc904c3a6904bc41ef1a12443e184ec86be253502b92fffdeea87c5606f0bc9"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.7/subswap-v1.4.7-x86_64-apple-darwin.tar.gz"
      sha256 "05712a6571ef36b4dc346ad12419f543dd0eb2e4fcde4c2eda29d6e1c0f94df9"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.7/subswap-v1.4.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a478c47bdb1834798bddd87cb0eea4c194e01203f6bc9032478165fe600c8f1"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.7/subswap-v1.4.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "25742ea934f49c4b724b70f0de4800d1a98f161daa9e30d68cc4d36e66b5eb67"
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
