class Subswap < Formula
  desc "Claude, Codex and ChatGPT account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.1.0/subswap-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "e904385d4362cb800f9dc807f1fdfc565cea2e243b10b9682a05952d902d6603"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.1.0/subswap-v1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "eb01202c853c9cd3bced6733c6aeaeb2a59dc7b7de0ba2da6f4668927025f569"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.1.0/subswap-v1.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02c40dddabc33a53d355f4cd3e964e61e65d0880f0e7f40e8179066839a78449"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.1.0/subswap-v1.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a1765c6bd9cf42f9cbb410e6ea8fc960439cfe87e0f4fe1f9fddc6c986537218"
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
