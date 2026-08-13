class CursorModeModel < Formula
  desc "Auto-switch Cursor Agent CLI models by Mode"
  homepage "https://github.com/x0c/cursor-mode-model"
  url "https://github.com/x0c/cursor-mode-model/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "96dde1a100f5c0ae1109ed528c0fd7075d5e2893488c1d5e4ec062341b30b7d6"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/cursor-mode-model"
  end

  def caveats
    <<~EOS
      After install, enable PATH wrappers:
        cursor-mode-model install
      Requires Cursor Agent CLI: https://cursor.com/install
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cursor-mode-model version")
  end
end
