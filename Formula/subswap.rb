class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.13.0/subswap-v1.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "c96c6247af2322b673745568ab61449c798bcf2d3d34f4b603299256ec7c403f"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.13.0/subswap-v1.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "709de2719c4837f52ce307384fafe0c5a1b27fa9f0fd16715d5d3ee0ca28a5d7"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.13.0/subswap-v1.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "18757b8b5baccf2132ff0f72380ff13ecc9daf604a0f8391a69885ada667b3cf"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.13.0/subswap-v1.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7cf6456b64e72996c096268b7c0357d0a9ea9db86c2f7426e513e128ac6559ee"
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
