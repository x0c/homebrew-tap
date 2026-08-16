class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.6.0/subswap-v1.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "b2e76e96ed81957ba2f99a144e5dcfd9c6b47125cfcca483cd16921361a026d1"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.6.0/subswap-v1.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "b69ebce1285e9813ad501fee09e8db0e95377965f0a35a9e3828b65a5c3bab90"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.6.0/subswap-v1.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7991551d318d1394af3e8fd19e4ccd4dbdec2f0273ae7f38f2610b6e7263643d"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.6.0/subswap-v1.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "798651a84579860b00145c3ed29cd118efba614ee46d42be3a0f398f79d2e20e"
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
