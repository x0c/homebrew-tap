cask "cpu-killer" do
  version "1.0.18"
  sha256 "792211a52f55cbd05bd9aa0d85c7795c3ba790173d1e4a7a6f05ba35c45c92cb"

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
