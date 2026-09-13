class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.9.1/subswap-v1.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "6e629fdca7031477bb8135241d5ee6f53f6360dfe0dbadd0330121060272ad99"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.9.1/subswap-v1.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "b39824e50d5798d1b45f20d72ae6c5e0a1d424eed5a160506056a911b35a49d3"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.9.1/subswap-v1.9.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "826d93dd591bb38e72f1f9838f112ec93b52d616646dde805a0582e7962e92d2"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.9.1/subswap-v1.9.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "866e87304601518669a7747d3f9fc9fc78b02c9b02c696fcacdad94e3f904bce"
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
