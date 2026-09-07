cask "cpu-killer" do
  version "1.0.20"
  sha256 "74863bed580ad84e5dbbfd4aef8ace61fcc4304ae9f5721adbe47dc51068f61c"

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
