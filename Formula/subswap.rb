class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.4.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.17/subswap-v1.4.17-aarch64-apple-darwin.tar.gz"
      sha256 "525bbe84585312d4beba65a477e5c006374078f1416fdf6a1eacd79dbcb54067"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.17/subswap-v1.4.17-x86_64-apple-darwin.tar.gz"
      sha256 "4e6ff172343400dd55256e57a604ebea0240d0a3919a96e08c115482244dece0"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.17/subswap-v1.4.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89d3f42a12523fff17d713c8fabfca576930a4f76e25feed61159f621b1e844b"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.17/subswap-v1.4.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da34cf3e4a48c08987e80ea4e5c391a503b4abbceb6dbac9dc1b3eb800d807de"
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
