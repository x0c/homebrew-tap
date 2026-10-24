cask "neatwebapp" do
  version "0.3.34"
  sha256 "44f7486902e5d48319c379a9debc8c01718293ee9880356dd5fd7769ae9b7628"

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
