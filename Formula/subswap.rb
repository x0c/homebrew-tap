class Subswap < Formula
  desc "Claude, Codex and ChatGPT account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.0.0/subswap-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "0d87009864dc8bec6563e9ff9835b5648e940a878b9072fcaa7b1012b2bb6af5"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.0.0/subswap-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "88016773bd157abe37cad0e77e18162e2bec4dfa2474881d36139bbec4069de8"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.0.0/subswap-v1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c1bf97890adfe04b62e3f980e5bf20628ef9a08b31177bee0a42027e895c8cbc"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.0.0/subswap-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7b4a0082ad18b6783a93b60604b59ff583743566c616ae7079a633aae463df3"
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
