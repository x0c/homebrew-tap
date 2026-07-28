class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.4.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.11/subswap-v1.4.11-aarch64-apple-darwin.tar.gz"
      sha256 "c52715d4526c2603419431ff47a767099f5b7d864df1cd9b81e23b8c54fdc28d"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.11/subswap-v1.4.11-x86_64-apple-darwin.tar.gz"
      sha256 "142a79bad8be6aecc45cca95770d1551cb0e27273bcd84a437ebcb4bfd6f267c"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.11/subswap-v1.4.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "954eed7ea65a783b58ba3173bf9c564d29ef572db6f7a4a658d91a508aa46ea4"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.11/subswap-v1.4.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45d54032fa3f47b44824f11e57d493d6f42ef51b9aaf388fc15562cb241e2cbb"
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
