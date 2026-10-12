class Pickup < Formula
  desc "Deprecated compatibility formula for Corral (formerly pickup)"
  homepage "https://github.com/corral-dev/corral"
  url "https://github.com/x0c/corral/archive/refs/tags/v0.24.143.tar.gz"
  sha256 "5d85d0df7fb5e4f8ac53d3ef2a6f191c8ea66a4961fc59b3c244b1e67302d2e3"
  license "MIT"

  deprecate! date: "2026-08-22", because: "renamed to corral; install with `brew install x0c/tap/corral`"

  depends_on "x0c/tap/corral"

  def install
    bin.install_symlink Formula["x0c/tap/corral"].opt_bin/"corral" => "pickup"
    (doc/"README").write <<~EOS
      pickup has been renamed to Corral.
      This formula remains so `brew upgrade pickup` keeps working via x0c/tap/corral.
    EOS
  end

  def caveats
    <<~EOS
      pickup was renamed to corral. This formula keeps the old `pickup` command.
      New installs: brew install x0c/tap/corral
      Do not run `brew install corral` (homebrew-core has an unrelated Pony package).
    EOS
  end

  test do
    assert_match "corral", shell_output("#{bin}/pickup --help")
  end
end
