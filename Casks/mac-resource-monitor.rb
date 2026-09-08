cask "mac-resource-monitor" do
  version "1.1.0"
  sha256 "d80b220e86c0a9e53fdf13f3861908ace0c405b7d6c7401fe0b11f4a2ad9a745"

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
