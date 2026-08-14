class CursorModeModel < Formula
  desc "Auto-switch Cursor Agent CLI models by Mode"
  homepage "https://github.com/x0c/cursor-mode-model"
  url "https://github.com/x0c/cursor-mode-model/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "d7a239012788f09f75e8a28d6e78ae767e9eddac3eb1025e6d9d3dc26485c7c9"
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
