class Subswap < Formula
  desc "Claude, Codex, Kimi and Cursor account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.4.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.14/subswap-v1.4.14-aarch64-apple-darwin.tar.gz"
      sha256 "ed3ad799091451ef84fb3bf990a745ba918e543f0cd867eee65805e2830239aa"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.14/subswap-v1.4.14-x86_64-apple-darwin.tar.gz"
      sha256 "9f54810dafe2f66faea5746ce9d3f1bd07a65f17c9dcdc494b0bce8694601ad1"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.4.14/subswap-v1.4.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "86881775ca4c622e52449277fb371edf4e98ea804d408be8c140c3600715ad06"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.4.14/subswap-v1.4.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "244d8095a36705a8d36628ea1a505f81866b2e40ef7a7a2fd1b6a431615c07ca"
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
