class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.7.3/subswap-v1.7.3-aarch64-apple-darwin.tar.gz"
      sha256 "843407e39450a4754f2575b274bbfdaf43dfce52fe1a426e83dfa5236ca1755d"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.7.3/subswap-v1.7.3-x86_64-apple-darwin.tar.gz"
      sha256 "973e977949dd72af06192d3eceb0d17af655ea31e44bd097de4ecc269edfc063"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.7.3/subswap-v1.7.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3272e290458f86d9fc8c08bf81a6652f708a65313cb4b53b5807a198b06b535b"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.7.3/subswap-v1.7.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "761d79cb38735e01279f75ee2e0eedfca5fbe81ced9021bfa8e0b6e9b44aaef4"
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
