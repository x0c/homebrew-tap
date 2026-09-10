cask "handy-switch" do
  version "1.0.18"
  sha256 "9d2d85a8e03b229ba39cdc5480522763c50a5f2166868f84fdd69a951716e7ca"

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
