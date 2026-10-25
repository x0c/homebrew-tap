class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.16.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.16.3/subswap-v1.16.3-aarch64-apple-darwin.tar.gz"
      sha256 "61df64e81d7e6dbe5b09e8599f0a5caa46a4037f69994cbbcea351a29291a64f"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.16.3/subswap-v1.16.3-x86_64-apple-darwin.tar.gz"
      sha256 "cbbef0875760ff85cb5c750267d0eb10fbd8e255d38524695a644dbdcf6472d8"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.16.3/subswap-v1.16.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "83d47689c58f29976ef8e5b17a2e7cfedad433259463ff9743682bba3743460f"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.16.3/subswap-v1.16.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef7abb97b3402fb305fc4d142521ef1cabf2ac026900a8872d4bfde2bfae6f08"
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
