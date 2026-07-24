class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.4.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.8/subswap-v1.4.8-aarch64-apple-darwin.tar.gz"
      sha256 "e2801423461ed870c674fc36f64eae27b0f97f0f8b34b65f529cc77a281ed0ae"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.8/subswap-v1.4.8-x86_64-apple-darwin.tar.gz"
      sha256 "70a08a7ed3c21378c590ee4e8477a5f9decac1fc5e82ea234be27eb26e2c4fb2"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.8/subswap-v1.4.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "de03595490fa17efcf6b8a3a8386b9b1933542f633ed91c2a79e629734e27bdb"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.8/subswap-v1.4.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "df9a6efa4e0a6447d9659e1497394da6ea4814df458b4418ddd27788a8547d04"
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
