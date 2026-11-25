class AgentDbctl < Formula
  desc "Zero-JVM database execution gate and audit CLI for coding agents"
  homepage "https://github.com/x0c/agent-dbctl"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.5.0/agent-dbctl_v0.5.0_darwin_arm64.tar.gz"
      sha256 "c7db583314f7027a11ebdcc1ae813004db20741955a912b30b4b264049edb7ab"
    end

    on_intel do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.5.0/agent-dbctl_v0.5.0_darwin_amd64.tar.gz"
      sha256 "b56c307b7fbcdeefeb8ec463a69be776886c8ebf52564be5d710c845d7b990a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.5.0/agent-dbctl_v0.5.0_linux_arm64.tar.gz"
      sha256 "b6d63595261bfa5772e55d718539091b2434ef922bd4b37f21e9f11d34b80d00"
    end

    on_intel do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.5.0/agent-dbctl_v0.5.0_linux_amd64.tar.gz"
      sha256 "9b7f763bdaed8c050f4bad07be534c428eb2b8e947ef03dc827697749434b3aa"
    end
  end

  def install
    bin.install "agent-dbctl"
  end

  test do
    ENV["AGENT_DBCTL_NO_SKILL_SYNC"] = "1"
    assert_match "v0.5.0", shell_output("#{bin}/agent-dbctl version --json")
  end
end
