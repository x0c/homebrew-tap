class SessionContinue < Formula
  include Language::Python::Virtualenv

  desc "Terminal session picker and handoff tool for Claude Code and Codex CLI"
  homepage "https://github.com/x0c/session-continue"
  url "https://github.com/x0c/session-continue/archive/refs/tags/v0.8.1.tar.gz"
  sha256 "b58a6799b8e8037f74b84a15594a4bea74b7e6bb8f372c0489c3117b76fbc5da"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "sc", shell_output("#{bin}/sc --help")
  end
end
