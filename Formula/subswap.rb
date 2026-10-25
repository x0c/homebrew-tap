class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.16.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.16.4/subswap-v1.16.4-aarch64-apple-darwin.tar.gz"
      sha256 "c4f6ecbe5419e04e30340bcb6da78386c1a9ee773d5aa8c3a08968a824eed668"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.16.4/subswap-v1.16.4-x86_64-apple-darwin.tar.gz"
      sha256 "09bd0ca48c3d74bf88e1b6bfe1736ac0edfe6c80be896464081f308b7fff023c"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.16.4/subswap-v1.16.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c3f8b437e26575d855b7319bbf1e7cf1a5b4e33a588ea28351dc495ec2eca81a"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.16.4/subswap-v1.16.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da960b962073bb6876189228a6864c2fbae04079dabde8456c30260342983541"
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
