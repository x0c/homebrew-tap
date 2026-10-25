class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.16.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.16.5/subswap-v1.16.5-aarch64-apple-darwin.tar.gz"
      sha256 "626870de67a8b6394f36e65d33a4785726807357c9b5f3ac7917b46f59609b56"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.16.5/subswap-v1.16.5-x86_64-apple-darwin.tar.gz"
      sha256 "e638c3d4b1ed24b8b4a1f889072a284cbeb64ca7f7eef8c105ba53b30e06dc4f"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.16.5/subswap-v1.16.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6fe9809b8c2419d671164d507fa31a027a4ee800d9f96a7cdcaa79cef359e680"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.16.5/subswap-v1.16.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ff8e93a63be430db029187d1437ff507e71f230249ac41392a3a4c2304cabe6"
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
