class Subswap < Formula
  desc "Claude, Codex and ChatGPT account switcher with quota-aware auto-swap"
  homepage "https://github.com/x0c/subswap"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.0.1/subswap-v1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "f650102f56f3a0bdea1996fa315f3a1acf28772d7f29390df19dca95241fdf8d"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.0.1/subswap-v1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "d3e6b3656006e1ed845305af258d30d49536b9728791b378c055b8fb81df3375"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.0.1/subswap-v1.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ecbcd27008e993aa56d17bbba5c27d6dee8c7ce45eaf0d24e5a18b1138d6d3c3"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.0.1/subswap-v1.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a763ba144652c48bd22b1dd649cda6da781a7d02dff0beb8a7094a73af9bb09"
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