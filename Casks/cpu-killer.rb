cask "cpu-killer" do
  version "1.0.0"
  sha256 "3e6e8fe7a75aea73abf0f5c697d445c10110df56c1fc2ad41b5b4fffe6563d0d"

  url "https://github.com/x0c/CPUKiller/releases/download/v#{version}/CPU-Killer-#{version}.dmg"
  name "CPU Killer"
  desc "Menu bar process table: see who is using the CPU, then end it"
  homepage "https://github.com/x0c/CPUKiller"

  depends_on macos: :tahoe

  app "CPU Killer.app"

  zap trash: [
    "~/Library/Preferences/top.caozc.CPUKiller.plist",
  ]
end
