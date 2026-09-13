class Subswap < Formula
  desc "Claude, Codex, Kimi, Cursor and OpenCode account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.9.0/subswap-v1.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "11173c26f8a530da6688ab2371838b4b6a2a11ff9cae13c97d9e5791cf03e224"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.9.0/subswap-v1.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "ede5dddf971ad6dc0aef52d3ed5e4c3cbae9d588a13cd48fd8d033f61393f845"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.9.0/subswap-v1.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e3b5a4fcf14a5f0a42ee6273f26e3a8f7149c5b479f0730c7a013822c26af64"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.9.0/subswap-v1.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "089abb7bf1ed343e3efee2a98a1a97a1ed8c38d08e747220820946a945a48afe"
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
