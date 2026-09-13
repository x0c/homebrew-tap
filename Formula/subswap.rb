class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.8.1/subswap-v1.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "0970c25dfa3a7e5a3eafb01f96e8c6b40a23f4dadafdf28a76306685e3f18294"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.8.1/subswap-v1.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "79e0fd1d311f689eb3da2795f15ba424730ccd531347165384376edba5d7ec13"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.8.1/subswap-v1.8.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46c79db317c71453b8b3e629ca3ea5e9c6959265825d48f8e6d29f025ea6c838"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.8.1/subswap-v1.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac5cebc61efd8b36cb29ac11e93d29e4d3245309820bed34f07d1b39891d9655"
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
