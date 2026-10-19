cask "mac-resource-monitor" do
  version "1.1.7"
  sha256 "e35d59ba83e92c17a5a1789a663a7d715ec883ee1a0789975620a458311a8f64"

  url "https://github.com/x0c/MacResourceMonitor/releases/download/v#{version}/Mac-Resource-Monitor-#{version}.dmg"
  name "Mac Resource Monitor"
  desc "Menu bar resource table: see CPU, memory, and network use, then end apps"
  homepage "https://github.com/x0c/MacResourceMonitor"

  depends_on macos: :tahoe

  app "Mac Resource Monitor.app"

  # 包内自带的 mrm 命令行：brew 安装/升级时自动链到 PATH，无需手动装。
  binary "#{appdir}/Mac Resource Monitor.app/Contents/MacOS/mrm", target: "mrm"

  zap trash: [
    "~/Library/Preferences/top.caozc.MacResourceMonitor.plist",
    "~/.local/bin/mrm",
  ]
end
