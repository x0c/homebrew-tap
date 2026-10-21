cask "neatwebapp" do
  version "0.3.32"
  sha256 "86a4d7dace85abc9f17e0f6cf9e7ef7fc4c5d6a63c6e0228319d8c3e237455d8"

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
