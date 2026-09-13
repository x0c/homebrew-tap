cask "mac-resource-monitor" do
  version "1.1.2"
  sha256 "b4049668c5b644c567f310e015222a6e2b92d3faa92ea6a97e220eed0c8420ce"

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
