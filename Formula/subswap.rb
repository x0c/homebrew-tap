class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.10.0/subswap-v1.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "1278180e35f4c29a618754261ec239f746db27093334d4831eb92e52ad25f956"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.10.0/subswap-v1.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "b7e4ce83f411f4175132d7e8289f7c822410d083b441fc6ae8ddfba99a88bc69"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.10.0/subswap-v1.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "75b6e1b7a4f4a85934685a013fad4d4507ff51c034894c5e4ba7a914647da5b6"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.10.0/subswap-v1.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8cea18d35e90c7985b5cd762047ee336cc88df37efbe490f2545230c94360587"
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
