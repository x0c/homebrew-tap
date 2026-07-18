class Pickup < Formula
  include Language::Python::Virtualenv

  desc "Terminal session picker and handoff tool for Claude Code, Codex CLI, and OpenCode"
  homepage "https://github.com/x0c/pickup"
  url "https://github.com/x0c/pickup/archive/refs/tags/v0.17.0.tar.gz"
  sha256 "0791cf86ba484d34141c0a11d030ee34b9931b8baf0db0d1be71d4805c22a620"
  license "MIT"

  depends_on "python@3.12"
  depends_on "tmux"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "pickup", shell_output("#{bin}/pickup --help")
  end
end
