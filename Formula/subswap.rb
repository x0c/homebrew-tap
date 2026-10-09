class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.14.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.14.6/subswap-v1.14.6-aarch64-apple-darwin.tar.gz"
      sha256 "99a1a4a6ed10f909af9afe5d238c79387a2d5537bf5a7c352db43a12397cbc6a"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.14.6/subswap-v1.14.6-x86_64-apple-darwin.tar.gz"
      sha256 "571fb0054f557585a48e08450ef71ce2ae3e06176fa494dd3060d89e6b0677c0"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.14.6/subswap-v1.14.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b05429bdfda57d10f3564dbc6a72aff12e3d5d497ce0a9529f15d0ee5f9e43ba"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.14.6/subswap-v1.14.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0f8f35bc18379c439080a587f732a39e6bde37d68a3dd774402897b4e445afc"
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
