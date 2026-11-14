class Agentflex < Formula
  desc "Animated, shareable card of your coding-agent week"
  homepage "https://github.com/corral-dev/agentflex"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/corral-dev/agentflex/releases/download/v0.3.2/agentflex-aarch64-apple-darwin"
      sha256 "f9bb719219dcef2e46b300f01bfa2b921f6cf7d5ab1a62a4c75c34cf5ba1b5aa"
    end

    on_intel do
      url "https://github.com/corral-dev/agentflex/releases/download/v0.3.2/agentflex-x86_64-apple-darwin"
      sha256 "7d76f9683cc1402715cc05ab7098c6697d9d1dc3be915f360d2dd509b1565a6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corral-dev/agentflex/releases/download/v0.3.2/agentflex-aarch64-unknown-linux-musl"
      sha256 "6552c6f7f739370e7ac0b649103cfaad8feca2ef70d319be89b275b4417332d7"
    end

    on_intel do
      url "https://github.com/corral-dev/agentflex/releases/download/v0.3.2/agentflex-x86_64-unknown-linux-musl"
      sha256 "9cb7baa991613f6845bf33f285177241c804324a623396b28b9c326208cedf4e"
    end
  end

  def install
    bin.install Dir["agentflex-*"].first => "agentflex"
  end

  test do
    assert_match "agentflex", shell_output("#{bin}/agentflex --version")
  end
end
