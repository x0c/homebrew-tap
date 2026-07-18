class Subswap < Formula
  desc "Claude, Codex and ChatGPT account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.3.1/subswap-v1.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "e222d365bce94ad49a98b683b8f14b6c99449238c3abdac16c9f1867cf3de343"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.3.1/subswap-v1.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "3a8845b43610468695630fa3ad3c27858eadc9dff3a07e97ed99a04b51870424"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.3.1/subswap-v1.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b0f7e0a0979c94f0eda4925a4ad4fd2a0bfd0570c71cb27caba08824805339b"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.3.1/subswap-v1.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fdecab6e252153c200baa694bf83aedfd673fb212d3f0ca7aff4e22511213ce8"
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
