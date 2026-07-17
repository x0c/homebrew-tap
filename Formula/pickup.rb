class Pickup < Formula
  include Language::Python::Virtualenv

  desc "Terminal session picker and handoff tool for Claude Code, Codex CLI, and OpenCode"
  homepage "https://github.com/x0c/pickup"
  url "https://github.com/x0c/pickup/archive/refs/tags/v0.14.0.tar.gz"
  sha256 "74a656f577e5ac4f5289f6fbca499e2940f579a943a92ae4b87dfc6f281f9548"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "pickup", shell_output("#{bin}/pickup --help")
  end
end
