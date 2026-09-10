class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.7.5/subswap-v1.7.5-aarch64-apple-darwin.tar.gz"
      sha256 "bdd5d35e206ab0acd537144b7f16d5ac651db2e77be043a09b3dfd70d3e2c55d"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.7.5/subswap-v1.7.5-x86_64-apple-darwin.tar.gz"
      sha256 "771f8d8e7d06ae37f55efeb18af60217b9c60eaa67dc80d62cf2cb125b9a3cbc"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.7.5/subswap-v1.7.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4b4f2e2c7b618a245398775d29e93d0af4847066afd310bb4272bc67323b1d1"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.7.5/subswap-v1.7.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "730c08663ee454ab8d328a363c28b90fb5f2e5a5d84990d4fed804d333b27673"
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
