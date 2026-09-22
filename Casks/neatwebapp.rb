cask "neatwebapp" do
  version "0.3.19"
  sha256 "1cacd588d9f28893845afcae4af1dc91a022c4a5d37568dfb18ef571a37de708"

  url "https://github.com/NeatMacApps/NeatWebApp/releases/download/v#{version}/NeatWebApp-#{version}.dmg"
  name "NeatWebApp"
  desc "Turn websites into focused macOS apps from the notch"
  homepage "https://github.com/NeatMacApps/NeatWebApp"

  depends_on macos: :sequoia

  app "NeatWebApp.app"

  zap trash: [
    "~/Library/Application Support/NeatWebApp",
    "~/Library/Caches/com.geraltgraham.NeatWebApp",
    "~/Library/Preferences/com.geraltgraham.NeatWebApp.plist",
  ]
end
