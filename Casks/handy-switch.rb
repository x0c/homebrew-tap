cask "handy-switch" do
  version "1.0.16"
  sha256 "9e1e18b27b9a829869b32ff5c1ce093fd2e10cb97bc72628a0b6a5e02da8a768"

  url "https://github.com/x0c/HandySwitch/releases/download/v#{version}/HandySwitch-#{version}.dmg"
  name "HandySwitch"
  desc "Minimal macOS menu bar toggles for everyday Mac habits"
  homepage "https://github.com/x0c/HandySwitch"

  depends_on macos: :tahoe

  app "HandySwitch.app"

  zap trash: [
    "~/Library/Preferences/top.caozc.HandySwitch.plist",
  ]
end
