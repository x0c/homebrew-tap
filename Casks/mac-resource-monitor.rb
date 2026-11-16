cask "mac-resource-monitor" do
  version "1.1.8"
  sha256 "83539788c64f51b781898b43694c1869154cf2fe1774fb63ceeeafebe2953324"

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
