class AgentDbctl < Formula
  desc "Zero-JVM database execution gate and audit CLI for coding agents"
  homepage "https://github.com/x0c/agent-dbctl"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.3.0/agent-dbctl_v0.3.0_darwin_arm64.tar.gz"
      sha256 "133e78163618408e53b4d0766f55fd680985d1f3ac50eb7e7a53e89e528e2582"
    end

    on_intel do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.3.0/agent-dbctl_v0.3.0_darwin_amd64.tar.gz"
      sha256 "a9bf73977a4793d485bc0406a962c18d9835eb7ffe6f35c529c57e6f989fd13b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.3.0/agent-dbctl_v0.3.0_linux_arm64.tar.gz"
      sha256 "880a91c4ae5fd112982c48d0f37501e592c820e9d5373591493ce97195e02756"
    end

    on_intel do
      url "https://github.com/x0c/agent-dbctl/releases/download/v0.3.0/agent-dbctl_v0.3.0_linux_amd64.tar.gz"
      sha256 "5b5beb6224d0564283bf84c9ac2a7e130f9210168c8c8ad8f632c3407d2a4187"
    end
  end

  def install
    bin.install "agent-dbctl"
  end

  test do
    ENV["AGENT_DBCTL_NO_SKILL_SYNC"] = "1"
    assert_match "v0.3.0", shell_output("#{bin}/agent-dbctl version --json")
  end
end
