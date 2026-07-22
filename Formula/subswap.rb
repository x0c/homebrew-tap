class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.6/subswap-v1.4.6-aarch64-apple-darwin.tar.gz"
      sha256 "49d0b4053ea7f3aac3cc002561db5c7244e457d347007d3a6770a833ee72d9d7"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.6/subswap-v1.4.6-x86_64-apple-darwin.tar.gz"
      sha256 "2579c8cb371ad7ae9cde7e41511ae3a1b0659a0a8aacfb69a04ef1708f5ef6b2"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.6/subswap-v1.4.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4bc9d6f71d85851228d1b4e8c50e97c7345b4e9b41170b6dc3119c882e504291"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.6/subswap-v1.4.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "52976198fb02742da7afc924af8a98e20029cc9bf1d5a1ba745b371a8dd41f66"
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
