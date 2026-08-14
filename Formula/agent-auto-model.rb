class AgentAutoModel < Formula
  desc "Auto-switch agent CLI models by Mode (Cursor Agent and Codex)"
  homepage "https://github.com/x0c/agent-auto-model"
  url "https://github.com/x0c/agent-auto-model/archive/refs/tags/v2.0.2.tar.gz"
  sha256 "f5cd0b42efd40c0bc637cc5c0f33550a7ea24d958d666fc97ea9b4e8ee52444c"
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
