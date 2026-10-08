class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.14.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.14.5/subswap-v1.14.5-aarch64-apple-darwin.tar.gz"
      sha256 "b65bc14a13e90b2e48ea6ac7426c0b3b74c56f02999df7cbdc90c20fecbe4c8d"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.14.5/subswap-v1.14.5-x86_64-apple-darwin.tar.gz"
      sha256 "3c36420b2138849ebd9d8e4b75fc9cdacf3b1556d9fe104dd38aadfac509dbcf"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.14.5/subswap-v1.14.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f85efe144b2e049adb6e87ee99c5c02034d2b3e4e7c8cb65399a2e27fd848df"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.14.5/subswap-v1.14.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b94f05ed31e582fe9061f68a0c1dc70b3c6592c2f00c410ccb6d3e26433e429f"
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
