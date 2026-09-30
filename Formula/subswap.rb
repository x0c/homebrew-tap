class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.12.0/subswap-v1.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "af6c247b7b0d73cfe7fbc8486b44d35e26748447fbfb3144a8faf52adc4b7396"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.12.0/subswap-v1.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "210a3f14cd84034e3b3c30b1b3202291cb083748061caa0e4087b8e954956c91"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.12.0/subswap-v1.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5ce866d1171fb00a9960b2e84669dd2b24746896df46561b22b2e880574d703d"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.12.0/subswap-v1.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "904c546e8e2ffdcb9be387e6fa75099f32d06db81c1b63980000193855f55dad"
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
