class Pickup < Formula
  include Language::Python::Virtualenv

  desc "Terminal session picker and handoff tool for Claude Code, Codex CLI, and OpenCode"
  homepage "https://github.com/x0c/pickup"
  url "https://github.com/x0c/pickup/archive/refs/tags/v0.16.8.tar.gz"
  sha256 "334c414e8982734690fe1ae730ef2b8d94dfb859da0ea627f779e693a08d1fff"
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
