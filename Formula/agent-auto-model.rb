class AgentAutoModel < Formula
  desc "UNSTABLE — not recommended. Auto-switch agent CLI models by Mode"
  homepage "https://github.com/x0c/agent-auto-model"
  url "https://github.com/x0c/agent-auto-model/archive/refs/tags/v2.0.8.tar.gz"
  sha256 "1e546d1663a269342cd87aac27f3a6a9f440f4a038616206002522168e6e7437"
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
