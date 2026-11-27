cask "mac-resource-monitor" do
  version "1.1.9"
  sha256 "09290b86956160d4df7a785854477187b09614089d548c1a1b519da246ce3fe7"

  url "https://github.com/NeatMacApps/NeatMonitor/releases/download/v#{version}/Mac-Resource-Monitor-#{version}.dmg"
  name "Mac Resource Monitor"
  desc "Menu bar resource table: see CPU, memory, and network use, then end apps"
  homepage "https://github.com/NeatMacApps/NeatMonitor"

  depends_on macos: :tahoe

  app "Mac Resource Monitor.app"

  # 包内自带的 mrm 命令行：brew 安装/升级时自动链到 PATH，无需手动装。
  binary "#{appdir}/Mac Resource Monitor.app/Contents/MacOS/mrm", target: "mrm"

  zap trash: [
    "~/Library/Preferences/top.caozc.MacResourceMonitor.plist",
    "~/.local/bin/mrm",
  ]
end
