class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.11.1/subswap-v1.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "8487d68b10c5e597ee894cb3f43eecfcf7669f95cfa18d7053d00c85562f8c7f"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.11.1/subswap-v1.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "e46dfd2d8b15a90ef54219e890c13c65720c9f31c78540b10d297db47d17f3ec"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.11.1/subswap-v1.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "461c0cec1951c1304b9522f9f42a3fb6fe3cfed0898bc30b760a96c0c5f63c49"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.11.1/subswap-v1.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b819ca15fe55ec769ad2dd82684e2da4772b609eac7dc9371a1cf81863ac591"
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
