cask "mac-resource-monitor" do
  version "1.1.5"
  sha256 "49c4904c03fc2d518a211c46977c1d9e3e70a9fd6d12ffee60e0b501fcb6a722"

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
