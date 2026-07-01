class SessionContinue < Formula
  include Language::Python::Virtualenv

  desc "Terminal session picker and handoff tool for Claude Code and Codex CLI"
  homepage "https://github.com/x0c/session-continue"
  url "https://github.com/x0c/session-continue/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "0c86a6655e26d88fee571dfa50ea63bfdffcfed685786b794a13f217c3be6bb9"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "sc", shell_output("#{bin}/sc --help")
  end
end
