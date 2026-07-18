class Pickup < Formula
  include Language::Python::Virtualenv

  desc "Terminal session picker and handoff tool for Claude Code, Codex CLI, and OpenCode"
  homepage "https://github.com/x0c/pickup"
  url "https://github.com/x0c/pickup/archive/refs/tags/v0.16.9.tar.gz"
  sha256 "72ab7cffdfeacdaded899e74ba5cb2f772407bbfca9e727ae2e163e24e142831"
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
