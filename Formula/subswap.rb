class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.9.3/subswap-v1.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "5fc306c263345d30a15ac947038bb5c4bd5d2e0672f8f5ce4eed4a1133af9676"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.9.3/subswap-v1.9.3-x86_64-apple-darwin.tar.gz"
      sha256 "2d8b8021254ad3b1e9f12b71bf2bbbd98b0b1903cafeadfc67e7bee4b4c8a98c"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.9.3/subswap-v1.9.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c9c278d03c1dfc611b829b0feb6788efc28f4868a6a35d26d439bcab2173a0f"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.9.3/subswap-v1.9.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd119d15597810fb884c3d8b45bb94d1b6230e376f00427a30dfb0d246743a24"
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
