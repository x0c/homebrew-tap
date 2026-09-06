cask "cpu-killer" do
  version "1.0.19"
  sha256 "96ab2c4168af97db544c5ca4c3d7cf0dc09c998c7cad3df85b6f00a3dde4e03a"

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
