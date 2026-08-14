# Deprecated alias formula. Prefer agent-auto-model.
class CursorModeModel < Formula
  desc "Deprecated alias of agent-auto-model"
  homepage "https://github.com/x0c/cursor-mode-model"
  url "https://github.com/x0c/cursor-mode-model/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "d7a239012788f09f75e8a28d6e78ae767e9eddac3eb1025e6d9d3dc26485c7c9"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags, output: bin/"agent-auto-model"), "./cmd/agent-auto-model"
    system "go", "build", *std_go_args(ldflags: ldflags, output: bin/"cursor-mode-model"), "./cmd/cursor-mode-model"
  end

  def caveats
    <<~EOS
      cursor-mode-model is now agent-auto-model. This formula still installs both names.
      After install:
        agent-auto-model install
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cursor-mode-model version")
    assert_match version.to_s, shell_output("#{bin}/agent-auto-model version")
  end
end
