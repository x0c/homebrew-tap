class AgentDbctl < Formula
  desc "Zero-JVM database execution gate and audit CLI for coding agents"
  homepage "https://github.com/x0c/agent-dbctl"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.4.1/agent-dbctl_v0.4.1_darwin_arm64.tar.gz"
      sha256 "5156877c093190a5ab6eef9acf8984e858600e4557bb298ce846d2750d550cb7"
    end

    on_intel do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.4.1/agent-dbctl_v0.4.1_darwin_amd64.tar.gz"
      sha256 "1d2bbef9306644cbda724844f0eff88f53a9937ae14f1e203c9ebf0f43e32846"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.4.1/agent-dbctl_v0.4.1_linux_arm64.tar.gz"
      sha256 "743c66d08405c3b2738f6c25d3ab4a2e9ef50432749cbe2fadb1240303f5a390"
    end

    on_intel do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.4.1/agent-dbctl_v0.4.1_linux_amd64.tar.gz"
      sha256 "b22d7944ba1e9ba183da16317b2fb7f3b364108cd09bc9cc5d86356091b4efbc"
    end
  end

  def install
    bin.install "agent-dbctl"
  end

  test do
    ENV["AGENT_DBCTL_NO_SKILL_SYNC"] = "1"
    assert_match "v0.4.1", shell_output("#{bin}/agent-dbctl version --json")
  end
end
