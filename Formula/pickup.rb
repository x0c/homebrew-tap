class Pickup < Formula
  include Language::Python::Virtualenv

  desc "Terminal session picker and handoff tool for Claude Code, Codex CLI, and OpenCode"
  homepage "https://github.com/x0c/pickup"
  url "https://github.com/x0c/pickup/archive/refs/tags/v0.15.1.tar.gz"
  sha256 "473accc8ccf93811a6c46d546868e91bf2c8fb13c62e18268a8647ae647b9dce"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "pickup", shell_output("#{bin}/pickup --help")
  end
end
