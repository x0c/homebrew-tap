class Subswap < Formula
  desc "Claude, Codex and ChatGPT account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "0.3.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v0.3.27/subswap-v0.3.27-aarch64-apple-darwin.tar.gz"
      sha256 "255d27da731a3fc113373a920eed0523bb0e3d605bc0c1892ea6bbcafa22e75c"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v0.3.27/subswap-v0.3.27-x86_64-apple-darwin.tar.gz"
      sha256 "baeb968016c98245bb894d30a01c4465d485fd2865dbb7bf58483e5ac173c708"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v0.3.27/subswap-v0.3.27-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c3ddd3bf8b7249c145d4c9c86e2c11ce4fa56fb1c3bf405dd8eb1dad9a07b003"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v0.3.27/subswap-v0.3.27-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57f631ca2098ab27fd0057418f8153653f8d14805b006e24fb556c146ca3958c"
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
