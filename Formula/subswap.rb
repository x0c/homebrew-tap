class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.4.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.15/subswap-v1.4.15-aarch64-apple-darwin.tar.gz"
      sha256 "e22a75b753747a4db226da8259149aab31dadf2fe1e498d7afdc8e9aad26ca87"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.15/subswap-v1.4.15-x86_64-apple-darwin.tar.gz"
      sha256 "a92ffaa00b9d33842572aa062fceccac49b06b19e96870fc529e9b4a091ca1c8"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.15/subswap-v1.4.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f5966efc75a3b5219b1ec2f6f7d41d92329303f5feeeaa0e1e541bcfac631f8"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.15/subswap-v1.4.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74cc83d869b314fdeb910d13cef53d93315cc782addb4b0033f9c1bfdd770326"
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
