class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.7.0/subswap-v1.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "f5211a3803000d8c92b859c403ea98c4d8aaafbda2259d3224247e9c98906c46"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.7.0/subswap-v1.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "0c17c57d7202f4492fe2cf12af5a4e2bb6e04269e175faa71838235fdb8b445e"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.7.0/subswap-v1.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7290e98c61141b2d08b9ee452b5fa0bee85b227f19539a5498b40a9bb5ef5249"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.7.0/subswap-v1.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e9de16db5a826c7e5b67c5197d4d3a8d5dab244993bdd3bcdf0d3e4a9479aac8"
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
