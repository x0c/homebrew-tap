class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.7.2/subswap-v1.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "1c6ef3cfdeb761d494c06c43b32eb571c53e0aa4d0716504d705c6c24342e9cf"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.7.2/subswap-v1.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "91f051a942db4aca52b77f64aa1b0bc712f90e14f9c84d9446c575b7f085c158"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.7.2/subswap-v1.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d746a220d7d19861ae59722be91f18b9b8362c68ff9ba9145d2a27ed6a70184"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.7.2/subswap-v1.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8dcedecb39d34e4a0fc8e551f4b13834a9195e370479440579121be4694d0047"
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
