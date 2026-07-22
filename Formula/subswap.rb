class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.5/subswap-v1.4.5-aarch64-apple-darwin.tar.gz"
      sha256 "46007aa7959ae17afa4bed8cec142f9ea8c2cadab14217f48c7f227b49c6c0c9"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.5/subswap-v1.4.5-x86_64-apple-darwin.tar.gz"
      sha256 "6c9ce25fe57c2d656c17d56c63b58e094b9f164f12c60d709e1da1ef1c66a85d"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.5/subswap-v1.4.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2bb0ae08f60cdd2a787926b0e6c0635ade6788f1699489829dfeb80305ab4800"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.5/subswap-v1.4.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af16f6d4b7a88eb4b6a9860c8247b332734ac1066f8f7da091ef8ccc9c35267e"
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
