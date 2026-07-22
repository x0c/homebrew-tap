class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.4/subswap-v1.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "0a34ea9a0eee11ab0ba59e3e71638dce4484f329abbca08a57e76b98cde0abf8"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.4/subswap-v1.4.4-x86_64-apple-darwin.tar.gz"
      sha256 "8eee737ccaeb86ea157bf0665f8ea0ad8cd36e448b2f8ae76d1078d279b72081"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.4/subswap-v1.4.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2872291d5577d3b52e3c89e50361818ce7e47df74d879b516c7542b79d803160"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.4/subswap-v1.4.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "66a61a6a2e6035ca10bf3316728e0675430c3a11f733a89a4315460be871b1c3"
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
