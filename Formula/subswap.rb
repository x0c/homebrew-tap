class Subswap < Formula
  desc "Claude, Codex and ChatGPT account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.3.0/subswap-v1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "480249030cdee3bd5f9dc45ef3a617c17ae2ad1b721a0a5a0e455ee8565a8774"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.3.0/subswap-v1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "fe40740a5d81c6c673fc0a2adbf5d1b4431a6e57688d9a57b002aadc03a848d7"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.3.0/subswap-v1.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "00396090ea766e2fccad4121738d4a0429eb7dbf0d9ed7b5c0d84a3d2f19b93e"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.3.0/subswap-v1.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "72ea51884f2ca816cd2f4713ae122e63953e523b241b4f9e6a590fde5a667080"
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
