class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.3/subswap-v1.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "9b2e20366ba8b4b52ff0c702d86c1cee76f9ee788e894b7666089918e70c6b75"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.3/subswap-v1.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "6d9a22598a1bae7bc04fd5e121e17b8e163b99352d273fee5061a3a581de32ef"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.3/subswap-v1.4.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "502bd339bd010b4a4992361f280f6d7eff591a0d64d2242bbdd203d8d7d1ad15"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.3/subswap-v1.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9cdd7eeb571e52fb44e0da5d8062b17d610917d7d4489fe7c9f9ab0bdae974cb"
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
