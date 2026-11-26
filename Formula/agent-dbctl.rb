class AgentDbctl < Formula
  desc "Zero-JVM database execution gate and audit CLI for coding agents"
  homepage "https://github.com/x0c/agent-dbctl"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.5.1/agent-dbctl_v0.5.1_darwin_arm64.tar.gz"
      sha256 "a3c700bf84190c905f44a922ccc0d10463b70960487d53c8efe86012bd71177f"
    end

    on_intel do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.5.1/agent-dbctl_v0.5.1_darwin_amd64.tar.gz"
      sha256 "abbb6f67be4e2f5ee3ea9a123ceb7657fbd36e050cf062a97ca9d31e9b48bf74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.5.1/agent-dbctl_v0.5.1_linux_arm64.tar.gz"
      sha256 "01ab2f195405b8d7f19be3092b9e7d22437873225d82d2cf61860abab39a30d7"
    end

    on_intel do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.5.1/agent-dbctl_v0.5.1_linux_amd64.tar.gz"
      sha256 "844f7038ebe7f6602f8c8eff11c21087d8412348978cfc4c26db16f87c97beef"
    end
  end

  def install
    bin.install "agent-dbctl"
  end

  test do
    ENV["AGENT_DBCTL_NO_SKILL_SYNC"] = "1"
    assert_match "v0.5.1", shell_output("#{bin}/agent-dbctl version --json")
  end
end
