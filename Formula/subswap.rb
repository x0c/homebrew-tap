class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.9.2/subswap-v1.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "3befe1053e899ad2b27076d6d2761f6cedac9e2dd07a6118f8379fb5f0dee9a9"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.9.2/subswap-v1.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "273f100d35ea3a5a50680cf389a87b3d454a686bb1e4093c6a4b3cec542954b9"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.9.2/subswap-v1.9.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0adbd731a1219224cd854a419d836feabc52416010553742fee94d8b54395af3"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.9.2/subswap-v1.9.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d05045bed17911b1c6d6968ec08886ad0eef402bd1e67c9387112c8d40a0d7c3"
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
