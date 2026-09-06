cask "handy-switch" do
  version "1.0.12"
  sha256 "5ba731fcf7629713aae4a76a3dd5409f520754ca3f0dc8c00a5e7dfcc3dcd439"

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
