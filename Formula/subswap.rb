class Subswap < Formula
  desc "Claude, Codex and ChatGPT account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.2.0/subswap-v1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "b2ce94e9a976d6532aec07b3720ad23c9f6b8d0b4fe646cd5d2660ad12ea8cfd"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.2.0/subswap-v1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "b94b718ca3dc33b5f67e6fb7835a933d410b2b0007936131b5d0de16c81cac70"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.2.0/subswap-v1.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "53c48a20fe8486c6e096ef4af0204bcd63770736b8698d236fae435dac063e9b"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.2.0/subswap-v1.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c656c8c36962240af9ed8a6e31f479a812fe90bd66c4fdc3a61714461816cc08"
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
