class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.6.2/subswap-v1.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "8326320f7a116cdfe96206a6c55410a2a12e391f65ebbde7b08b3c4a55287380"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.6.2/subswap-v1.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "36d973625da62150a693d889bd44dde02590b8879c6a09fa067d4609e2862191"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.6.2/subswap-v1.6.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6051748dd07b3ffa46dc3fb454f0d2fd93bf7f00c2d1e1930eed4ee776459274"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.6.2/subswap-v1.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "933b667ef550dca2d7745aaeef8348f1bbae15741ddbcad2497bd2e7341e2b97"
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
