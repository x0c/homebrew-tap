class AgentDbctl < Formula
  desc "Zero-JVM database execution gate and audit CLI for coding agents"
  homepage "https://github.com/x0c/agent-dbctl"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.4.0/agent-dbctl_v0.4.0_darwin_arm64.tar.gz"
      sha256 "2913ae45fabb247612d952dd8228d6caeb0099febc770db8a29d4525f8317160"
    end

    on_intel do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.4.0/agent-dbctl_v0.4.0_darwin_amd64.tar.gz"
      sha256 "ffd3601e01a579c7ab513886dcc4873062a51f975d3ef0d1266c7026c3c3835d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.4.0/agent-dbctl_v0.4.0_linux_arm64.tar.gz"
      sha256 "534a01ffd1369e394975af6e754a6fb86787f72a9e06c0f6ac9e335ce36cb5d9"
    end

    on_intel do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.4.0/agent-dbctl_v0.4.0_linux_amd64.tar.gz"
      sha256 "c95d4fdb1a23ce6a3ab2efd88be02f8e359181fd6e89d20d96ed5284259e678b"
    end
  end

  def install
    bin.install "agent-dbctl"
  end

  test do
    ENV["AGENT_DBCTL_NO_SKILL_SYNC"] = "1"
    assert_match "v0.4.0", shell_output("#{bin}/agent-dbctl version --json")
  end
end
