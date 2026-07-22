class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.2/subswap-v1.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "679f47423de0d70f1c4447e45c151c5c3a554cc8286989d889b660cb8752022a"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.2/subswap-v1.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "1d37e40be6856ac1a69136c0bd2c529f1f9c99c8bb2ebfedade0c1e10620ddda"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.2/subswap-v1.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3332a7297973a35549c4f444fc529fdddafec80de8f99c072e0a9bce56c96dea"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.2/subswap-v1.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1efc9d6e1845959c23c0926655e6457e2ccfe7d66afd1e6147c13dd49b8265be"
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
