class AgentAutoModel < Formula
  desc "Auto-switch agent CLI models by Mode (Cursor Agent and Codex)"
  homepage "https://github.com/x0c/cursor-mode-model"
  url "https://github.com/x0c/cursor-mode-model/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "16e72972c1e9d7f7b85fff94d641fee2b93722238872958cba1e9f32ba1466e5"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags, output: bin/"agent-auto-model"), "./cmd/agent-auto-model"
    system "go", "build", *std_go_args(ldflags: ldflags, output: bin/"cursor-mode-model"), "./cmd/cursor-mode-model"
  end

  def caveats
    <<~EOS
      After install, enable PATH wrappers:
        agent-auto-model install
      Requires Cursor Agent CLI and/or Codex CLI.
      cursor-mode-model remains a compatibility alias.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-auto-model version")
  end
end
