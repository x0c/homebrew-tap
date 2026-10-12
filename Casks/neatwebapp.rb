cask "neatwebapp" do
  version "0.3.24"
  sha256 "392debc35d1a3beb79a5a1b8c496dbf2e1af17929c24a0ba800fd3874b15392a"

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
