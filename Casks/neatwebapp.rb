cask "neatwebapp" do
  version "0.3.29"
  sha256 "30483831b928f604c07dc30e6cb0ee4a9e409d1bbad581e92eaaec1428166df7"

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
