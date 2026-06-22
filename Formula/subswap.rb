class Subswap < Formula
  desc "Claude, Codex and ChatGPT account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "0.3.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v0.3.26/subswap-v0.3.26-aarch64-apple-darwin.tar.gz"
      sha256 "bbaf48c00c6d7172f293496c84d46563c2b03f5ad0d6e9c339d74814977dfb3d"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v0.3.26/subswap-v0.3.26-x86_64-apple-darwin.tar.gz"
      sha256 "6155fde834d2fe4ebda80f87656ec0b1de73bb1ba9b5b2d6a369f11409bca32c"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v0.3.26/subswap-v0.3.26-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e868206b0d45a432ac33bfb8509a8eafacbe47c5fa97613159a214a0a78bd2e6"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v0.3.26/subswap-v0.3.26-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "54b88022bc43595240865a124de88a404fb0d918c27a4f88928c789441271433"
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
