class AgentDbctl < Formula
  desc "Zero-JVM database execution gate and audit CLI for coding agents"
  homepage "https://github.com/x0c/agent-dbctl"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.2.0/agent-dbctl_v0.2.0_darwin_arm64.tar.gz"
      sha256 "bf5328cc6868e0692dee9215abeb1f9f4290d7f005f9636f7e8f4faca6baba36"
    end

    on_intel do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.2.0/agent-dbctl_v0.2.0_darwin_amd64.tar.gz"
      sha256 "0a30031b9661dc22edb8a650c28dec0776e52cd7ba5c5c3fef8d8ac060e4ca02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.2.0/agent-dbctl_v0.2.0_linux_arm64.tar.gz"
      sha256 "cff883262e676084271f609251fbafebc216383e584c0ce7429623c9a5bf80ba"
    end

    on_intel do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.2.0/agent-dbctl_v0.2.0_linux_amd64.tar.gz"
      sha256 "5713e73745fd28b3058ef2294edc9cb7f92aa71713eee6d70bde706d375a78d1"
    end
  end

  def install
    bin.install "agent-dbctl"
  end

  test do
    ENV["AGENT_DBCTL_NO_SKILL_SYNC"] = "1"
    assert_match "v0.2.0", shell_output("#{bin}/agent-dbctl version --json")
  end
end
