class Pickup < Formula
  desc "Compatibility formula: pickup was renamed to corral"
  homepage "https://github.com/x0c/corral"
  url "https://github.com/x0c/corral/archive/refs/tags/v0.24.143.tar.gz"
  sha256 "5d85d0df7fb5e4f8ac53d3ef2a6f191c8ea66a4961fc59b3c244b1e67302d2e3"
  license "MIT"

  depends_on "corral"

  def install
    bin.install_symlink Formula["corral"].opt_bin/"corral" => "pickup"
  end

  def caveats
    <<~EOS
      pickup was renamed to corral. This formula only keeps the old `pickup` command.
      New installs: brew install x0c/tap/corral
    EOS
  end

  test do
    assert_match "corral", shell_output("#{bin}/pickup --help")
  end
end
