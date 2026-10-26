class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.16.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.16.6/subswap-v1.16.6-aarch64-apple-darwin.tar.gz"
      sha256 "0b233ac39760e4b584c5ee401eeb3d2a7378094d3c68b362c5be424c9ed47422"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.16.6/subswap-v1.16.6-x86_64-apple-darwin.tar.gz"
      sha256 "1c773957031bff70a5db973a320384a736d451b0fd3bcbd5a8ca135b62c8a588"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.16.6/subswap-v1.16.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7fc279d54236e790d97dd4fc74e03884e32d0c7e62791df48a15734487d3551"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.16.6/subswap-v1.16.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7d62070f19268b52ccbe056027222d2a52b49494bb1595827bfef51c732b1af"
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
