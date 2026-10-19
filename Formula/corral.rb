# 由 cli/scripts/homebrew_formula.py 生成，请勿手改；改生成器后随下次发版重新生成。
# 安装策略：有预编译 wheel 的平台直接安装（不拉 Rust 工具链）；缺 wheel 的平台源码编译兜底。
class Corral < Formula
  include Language::Python::Virtualenv

  desc "Terminal session handoff tool for Claude Code, Codex CLI, OpenCode, Cursor, and Pi"
  homepage "https://github.com/corral-dev/corral"
  version "0.24.333"
  license "MIT"

  on_macos do
    url "https://github.com/corral-dev/corral/releases/download/v0.24.333/corral-0.24.333-cp310-abi3-macosx_10_12_x86_64.macosx_11_0_arm64.macosx_10_12_universal2.whl"
    sha256 "22d8407c06670f9e7b8931cd8842a2673576c40ce8f03e5e411da39cad3cac76"
  end

  on_linux do
    url "https://github.com/corral-dev/corral/archive/refs/tags/v0.24.333.tar.gz"
    sha256 "db5f3e01753441b24ac4a404aa5cd824ef2239dced17a57bd86b6082c8c4ddde"
  end

  depends_on "python@3.12"
  depends_on "tmux"

  on_linux do
    depends_on "maturin" => :build
    depends_on "rust" => :build
  end

  resource "sesskit" do
    url "https://github.com/x0c/sesskit/releases/download/v0.2.14/sesskit-0.2.14-py3-none-any.whl"
    sha256 "3bd56c0f12a30b1d4518f9964a033492bdd2b25c5ac9830bd5b7a662231ac4c3"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/09/ce/3929538b2b9918f5eee623fbf3346893973191f6df93f19bbda097bd7bb7/websockets-17.0.1-py3-none-any.whl"
    sha256 "c6be9cba65c65cc76dfa3d4619e359ff02a4476c74e179b215236c11a0b32345"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/7a/c2/920ef838e2f0028c8262f16101ec09ebd5969864e5a64c4c05fad0617c56/packaging-26.1-py3-none-any.whl"
    sha256 "5d9c0669c6285e491e0ced2eee587eaf67b670d94a19e94e3984a481aba6802f"
  end

  resource "linkify-it-py" do
    url "https://files.pythonhosted.org/packages/b4/de/88b3be5c31b22333b3ca2f6ff1de4e863d8fe45aaea7485f591970ec1d3e/linkify_it_py-2.1.0-py3-none-any.whl"
    sha256 "0d252c1594ecba2ecedc444053db5d3a9b7ec1b0dd929c8f1d74dce89f86c05e"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/b3/81/4da04ced5a082363ecfa159c010d200ecbd959ae410c10c0264a38cac0f5/markdown_it_py-4.2.0-py3-none-any.whl"
    sha256 "9f7ebbcd14fe59494226453aed97c1070d83f8d24b6fc3a3bcf9a38092641c4a"
  end

  resource "mdit-py-plugins" do
    url "https://files.pythonhosted.org/packages/a5/69/6da5581c6a7fede7dc261bf4e67d6adca4196f176b43288b55b3db395b6e/mdit_py_plugins-0.6.1-py3-none-any.whl"
    sha256 "214c82fb2ac524472ab6a5bcab1de80f73b50443e187f401bfd77efbc7c6481d"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl"
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/ec/73/6fd0bb9ce84138c3857f12e9de63bc901852975a092d545f18087a204aa2/platformdirs-4.10.1-py3-none-any.whl"
    sha256 "0e4eff26be2d75293977f7cddc153fd9b8eaa7fb0c7b64ffe4076cb443117443"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/f4/7e/a72dd26f3b0f4f2bf1dd8923c85f7ceb43172af56d63c7383eb62b332364/pygments-2.20.0-py3-none-any.whl"
    sha256 "81a9e26dd42fd28a23a2d169d86d7ac03b46e2f8b59ed4698fb4785f946d0176"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/82/3b/64d4899d73f91ba49a8c18a8ff3f0ea8f1c1d75481760df8c68ef5235bf5/rich-15.0.0-py3-none-any.whl"
    sha256 "33bd4ef74232fb73fe9279a257718407f169c09b78a87ad3d296f548e27de0bb"
  end

  resource "textual" do
    url "https://files.pythonhosted.org/packages/fb/be/35261223d9416a0751cdff1c7b4a6f881387218a12d439fe22fefebc8c04/textual-8.2.8-py3-none-any.whl"
    sha256 "267375fd402dc8d981457212efa71f0e3365fd17bba144ba9bb3ed7563cb374a"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/49/d3/b8441a820a491ddfc024b0b0cf0393375b75ea13866d9c66727e54c2fc80/typing_extensions-4.16.0-py3-none-any.whl"
    sha256 "481caa481374e813c1b176ada14e97f1f67a4539ce9cfeb3f350d78d6370c2e8"
  end

  resource "uc-micro-py" do
    url "https://files.pythonhosted.org/packages/61/73/d21edf5b204d1467e06500080a50f79d49ef2b997c79123a536d4a17d97c/uc_micro_py-2.0.0-py3-none-any.whl"
    sha256 "3603a3859af53e5a39bc7677713c78ea6589ff188d70f4fee165db88e22b242c"
  end

  def install
    venv = virtualenv_create(libexec, "python3.12")
    wheelhouse = buildpath/"dependency-wheels"
    resources.each do |resource|
      resource.stage { wheelhouse.install Dir["*.whl"] }
    end
    venv.pip_install Dir[wheelhouse/"*.whl"].sort.join("\n")
    if (wheel = Dir["*.whl"].first)
      # 预编译 wheel：直接安装，无需 Rust 工具链
      venv.pip_install wheel
    else
      # 该平台无预编译包：源码编译兜底
      system "maturin", "build", "--release", "--interpreter", libexec/"bin/python", "--out", "dist"
      venv.pip_install Dir["dist/*.whl"].first
    end
    bin.install_symlink libexec/"bin/corral"
  end

  test do
    system libexec/"bin/python", "-m", "pip", "check"
    system libexec/"bin/python", "-c", "import corral._native"
    assert_match "corral", shell_output("#{bin}/corral --help")
  end
end
