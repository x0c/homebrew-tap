class Subswap < Formula
  desc "Claude, Codex and ChatGPT account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v0.1.0/subswap-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "dfa08c15d6af40c00ed5169867a04c16cb2c46d2fcda61a9837d94f5f978c7be"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v0.1.0/subswap-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "eb29044c95eaba9239170d173ac8a0acf576baf5e8f9010691a3a55ed4855118"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v0.1.0/subswap-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a6b42761c3e8b6e6e94ba36719d1f48d6b8a65556339f97fcc704de1f5beb1ea"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v0.1.0/subswap-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bab2bbd68fba39b870cf83d76abf4233da59d2374442ca4642549702cb1691e0"
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
