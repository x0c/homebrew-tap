class SessionContinue < Formula
  include Language::Python::Virtualenv

  desc "Terminal session picker and handoff tool for Claude Code and Codex CLI"
  homepage "https://github.com/x0c/session-continue"
  url "https://github.com/x0c/session-continue/archive/refs/tags/v0.11.0.tar.gz"
  sha256 "e51a317faaa94b860a0fa4c4fc3f1a954e3a5764ef39d535d8353e60c21c7e46"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "sc", shell_output("#{bin}/sc --help")
  end
end
