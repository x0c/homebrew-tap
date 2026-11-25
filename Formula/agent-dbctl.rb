class AgentDbctl < Formula
  desc "Zero-JVM database execution gate and audit CLI for coding agents"
  homepage "https://github.com/x0c/agent-dbctl"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.1.0/agent-dbctl_v0.1.0_darwin_arm64.tar.gz"
      sha256 "3f6e8ec5f3372b6a04aed12d2539405fcf31b561712aceed3e690f5e78971d89"
    end

    on_intel do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.1.0/agent-dbctl_v0.1.0_darwin_amd64.tar.gz"
      sha256 "6a7fdf2829513f3ad6e0d8d65b66402c140fd247513bc839f4ea7843d0f5e599"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.1.0/agent-dbctl_v0.1.0_linux_arm64.tar.gz"
      sha256 "be8509167ef2f122a4e6c9b651803c1777009bdebae55a53d1b33ea7c883b113"
    end

    on_intel do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.1.0/agent-dbctl_v0.1.0_linux_amd64.tar.gz"
      sha256 "62d89a196295400760b61a986ecf0610bf6ad14aab1f60d288f7576f0c8495ca"
    end
  end

  def install
    bin.install "agent-dbctl"
  end

  test do
    ENV["AGENT_DBCTL_NO_SKILL_SYNC"] = "1"
    assert_match "v0.1.0", shell_output("#{bin}/agent-dbctl version --json")
  end
end
