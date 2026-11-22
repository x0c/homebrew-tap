class Subswap < Formula
  desc "Switch Claude Code, Codex, Kimi Code, Cursor, OpenCode and Command Code accounts"
  homepage "https://github.com/x0c/subswap"
  version "1.17.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.17.2/subswap-v1.17.2-aarch64-apple-darwin.tar.gz"
      sha256 "274080c912d8a207dd4e794f83be258e540f8fa8dd0842b713a747416add3d37"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.17.2/subswap-v1.17.2-x86_64-apple-darwin.tar.gz"
      sha256 "0734d48184fc8e8e038b19ff2effa31e06de907f963f0bd69b43e5e128a9e043"
    end
  end

  on_linux do
    depends_on "dbus"

    on_arm do
      url "https://github.com/x0c/subswap/releases/download/v1.17.2/subswap-v1.17.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "45c329382eaffc14f7a538fcc252891df71506bed3bdb82471fd18bf2ca508da"
    end

    on_intel do
      url "https://github.com/x0c/subswap/releases/download/v1.17.2/subswap-v1.17.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06c749b9e96e9e034de65a129011d0dcc088447feda4c64fa231b18916057e9e"
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
