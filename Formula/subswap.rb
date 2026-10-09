class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.15.0/subswap-v1.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "b014577ea02a6893764bb802151d5eed560191f2ec76828c932c19a5e3bd2319"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.15.0/subswap-v1.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "42d3481a12668a5e7ce5ac810885094f757577f244fb4dd7933afadbcd2a98b1"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.15.0/subswap-v1.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6790e697f2fd6a39014db3f49047118e3bee09509d9301fedb92477599af7540"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.15.0/subswap-v1.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e3b42bb9517a8481f288e2d72a6ee9d44140f8c8e1164c16c8bfc0063d0e81aa"
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
