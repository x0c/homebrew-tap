cask "handy-switch" do
  version "1.0.22"
  sha256 "f59f8af43d0590de6bd59319e466ff3dd5df67b03f1d95504e044e2a78d1b189"

  url "https://github.com/NeatMacApps/NeatSwitch/releases/download/v#{version}/HandySwitch-#{version}.dmg"
  name "HandySwitch"
  desc "Minimal macOS menu bar toggles for everyday Mac habits"
  homepage "https://github.com/NeatMacApps/NeatSwitch"

  depends_on macos: :sonoma

  app "HandySwitch.app"

  zap trash: [
    "~/Library/Preferences/top.caozc.HandySwitch.plist",
  ]
end
