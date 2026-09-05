class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.7.1/subswap-v1.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "553d1c11f9e52a70b31dbeefba4b24955e76744d0733a260ed555c8433043725"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.7.1/subswap-v1.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "6e0bbfde107d11ff102b86288d9623ac8934885e9fd58b48fe6629dc59e7e670"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.7.1/subswap-v1.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "daaec465f16a8b55a2c033cb76f39ec8e5ce5dd80c9fa509e44dc4b000f8e236"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.7.1/subswap-v1.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d5ae756a15d1e3b10043101813ad8e3abaecae53433cb9aa4573e534e0038a41"
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
