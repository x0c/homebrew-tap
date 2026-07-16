class SessionContinue < Formula
  include Language::Python::Virtualenv

  desc "Terminal session picker and handoff tool for Claude Code, Codex CLI, and OpenCode"
  homepage "https://github.com/x0c/session-continue"
  url "https://github.com/x0c/session-continue/archive/refs/tags/v0.13.1.tar.gz"
  sha256 "eaf564164042fbde03670bf4858bbfaa5902ac0e6c003648f29122718a582226"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "sc", shell_output("#{bin}/sc --help")
  end
end
