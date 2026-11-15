class Subswap < Formula
  desc "Switch Claude Code, Codex, Kimi Code, Cursor, OpenCode and Command Code accounts"
  homepage "https://github.com/x0c/subswap"
  version "1.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.17.1/subswap-v1.17.1-aarch64-apple-darwin.tar.gz"
      sha256 "e66ba855996b05ad6e536a872ecbe98818ef7d83f5810d556167a8830d24827f"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.17.1/subswap-v1.17.1-x86_64-apple-darwin.tar.gz"
      sha256 "8583b16f96061adc9b275c093756bff6052742211ce32c1f28196aaf60b5fd3e"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.17.1/subswap-v1.17.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "706072cb39df3f1fded368ec05f68bdb24d6e37da17204e76f7169faf9f8a6ca"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.17.1/subswap-v1.17.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49f731b08e28552071349fe1fe85908bcbe60c5370c134bb288536d1a3764a62"
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
