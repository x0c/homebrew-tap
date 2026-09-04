cask "cpu-killer" do
  version "1.0.9"
  sha256 "702fb4b4994f9732c211fdaa65cc2b5910556cc864cad809335907723011c61a"

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
