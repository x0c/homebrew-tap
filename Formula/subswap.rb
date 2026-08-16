class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.6.1/subswap-v1.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "75a0dd587de6feac560e8d6bfbc60527eba070aad6f8feda524de2c40df4d615"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.6.1/subswap-v1.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "b75135c9159adad0565fe97e520d9391de052bd2a08b6be77ddf5573cb4b7430"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.6.1/subswap-v1.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e8eac4eaaf8c9373f2743c7d5086d0f30b240ad8ac19032281f704b6a719dd0a"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.6.1/subswap-v1.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "61e9b495365b7f9d5d4271eca86380d7da30292e61816061a2b49d833ae8b639"
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
