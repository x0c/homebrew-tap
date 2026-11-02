cask "handy-switch" do
  version "1.0.21"
  sha256 "17224aa2ee57d60bf3025ff9320b5f5b2c2f9832f17aa23c9712a567fea23589"

  url "https://github.com/x0c/HandySwitch/releases/download/v#{version}/HandySwitch-#{version}.dmg"
  name "HandySwitch"
  desc "Minimal macOS menu bar toggles for everyday Mac habits"
  homepage "https://github.com/x0c/HandySwitch"

  depends_on macos: :sonoma

  app "HandySwitch.app"

  zap trash: [
    "~/Library/Preferences/top.caozc.HandySwitch.plist",
  ]
end
