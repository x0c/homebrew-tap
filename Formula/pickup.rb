class Pickup < Formula
  include Language::Python::Virtualenv

  desc "Terminal session picker and handoff tool for Claude Code, Codex CLI, and OpenCode"
  homepage "https://github.com/x0c/pickup"
  url "https://github.com/x0c/pickup/archive/refs/tags/v0.16.0.tar.gz"
  sha256 "6c4ee0c1f566088fef5bf51ffb323be7295d4b1e20f3f4d919308a37c4bab9f5"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "pickup", shell_output("#{bin}/pickup --help")
  end
end
