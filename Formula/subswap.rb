class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.4.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.9/subswap-v1.4.9-aarch64-apple-darwin.tar.gz"
      sha256 "8f97c362082795c0d48d9aafd019fab6ae80c5b69e0d3344fde3f89b4d98b5ee"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.9/subswap-v1.4.9-x86_64-apple-darwin.tar.gz"
      sha256 "574d44ff87f47f61ba84007163f098aa2939eabd23def89a9a227c61197f0ceb"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.9/subswap-v1.4.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9e6f59da764f1e8ecfa5cf95fed64e084e72f78cd521642c4eddddf84bb24474"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.9/subswap-v1.4.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8dcc2f34ac323c1431f18c1bb5299e810f405880799332eb2a3862bdb512c41"
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
