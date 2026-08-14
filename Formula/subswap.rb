class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.4.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.16/subswap-v1.4.16-aarch64-apple-darwin.tar.gz"
      sha256 "6fdf681e8653dc728b0c04f4a0452b0a0dea60c65cd5043dd4c0068a1451fd6f"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.16/subswap-v1.4.16-x86_64-apple-darwin.tar.gz"
      sha256 "adc0877198fc37d69ce5e7935684b8fed29dd288c4fd1afd78cc8788f63a85a0"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.16/subswap-v1.4.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64279f1e4fd6de26feda81de448b345ad3f1748646b0a2ca5e4f65bd77bafdfb"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.16/subswap-v1.4.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7d5793021e876275cb63dad3c8434cf8c2a75a14a89f599d51fe73277e7e7d8"
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
