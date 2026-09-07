cask "handy-switch" do
  version "1.0.14"
  sha256 "04232b9911017ecdff53bc6bc002e2b5deceff47746367860bca50d3d892fc91"

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
