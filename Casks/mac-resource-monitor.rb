cask "mac-resource-monitor" do
  version "1.1.1"
  sha256 "eee1c3852824316b7a6d6620fe8fdc9e070602e81c2b9cca938d7ec474d54638"

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
