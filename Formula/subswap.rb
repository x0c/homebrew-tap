class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.7.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.7.6/subswap-v1.7.6-aarch64-apple-darwin.tar.gz"
      sha256 "1f9dad8d972558131237bdc3cfaf7f24876a9b02cee5895d6a964a3568d76c97"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.7.6/subswap-v1.7.6-x86_64-apple-darwin.tar.gz"
      sha256 "d5ee88b27a2f17fdedee33869f1aea74751196ad865fcd356cf53a60e3ec6695"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.7.6/subswap-v1.7.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2afb5f4929403482ccb13dc66a8f954e52e6fc0465a019f2b9fbd567cbb9354a"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.7.6/subswap-v1.7.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "985e13fa385e9a498d11df4417d4e404b3ee3b219b9ec8016d1bf1f115e1f39b"
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
