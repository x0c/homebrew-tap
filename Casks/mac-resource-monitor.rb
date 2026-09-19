cask "mac-resource-monitor" do
  version "1.1.4"
  sha256 "9eff9cf5424fde10738184f3fe2c6f5ee9355a470b1ceefbc680eb02ba5d8ce0"

  url "https://github.com/x0c/MacResourceMonitor/releases/download/v#{version}/Mac-Resource-Monitor-#{version}.dmg"
  name "Mac Resource Monitor"
  desc "Menu bar resource table: see CPU, memory, and network use, then end apps"
  homepage "https://github.com/x0c/MacResourceMonitor"

  depends_on macos: :tahoe

  app "Mac Resource Monitor.app"

  zap trash: [
    "~/Library/Preferences/top.caozc.MacResourceMonitor.plist",
  ]
end
