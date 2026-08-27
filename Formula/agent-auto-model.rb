class AgentAutoModel < Formula
  desc "Auto-switch agent CLI models by Mode (Cursor Agent and Codex)"
  homepage "https://github.com/x0c/agent-auto-model"
  url "https://github.com/x0c/agent-auto-model/archive/refs/tags/v2.0.6.tar.gz"
  sha256 "3c4ebf18fba0aa79a5e068c9ed3a7e5ec7a7a90cf6cdce78ea9fd43d115a0dc8"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags, output: bin/"agent-auto-model"), "./cmd/agent-auto-model"
  end

  def caveats
    <<~EOS
      After install, enable PATH wrappers:
        agent-auto-model install
      Requires Cursor Agent CLI and/or Codex CLI.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-auto-model version")
  end
end
