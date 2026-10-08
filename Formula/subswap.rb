class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.14.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.14.4/subswap-v1.14.4-aarch64-apple-darwin.tar.gz"
      sha256 "ce86250848544f489e1af09e0c46655cb6fa457d5fec17e37acfd0450c6ee0b6"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.14.4/subswap-v1.14.4-x86_64-apple-darwin.tar.gz"
      sha256 "afd69d6a98088edcfc30f14af11c99caf08fe4d375f6db49d9dc95d23dacfb15"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.14.4/subswap-v1.14.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "596b33e889da067d7577f71e9a77bd72c8206df3d1c0fa941d784df1e585013c"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.14.4/subswap-v1.14.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f4be00283c7398065831c549e4470db3629d631c53c561d380ac15640d7721c"
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
