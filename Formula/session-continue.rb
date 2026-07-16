class SessionContinue < Formula
  include Language::Python::Virtualenv

  desc "Terminal session picker and handoff tool for Claude Code and Codex CLI"
  homepage "https://github.com/x0c/session-continue"
  url "https://github.com/x0c/session-continue/archive/refs/tags/v0.13.0.tar.gz"
  sha256 "5b20452d361fed38ffe627dcc36de962d744b732551819035d0b108f4d70e8bc"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "sc", shell_output("#{bin}/sc --help")
  end
end
