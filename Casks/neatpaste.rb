cask "neatpaste" do
  version "1.0.9"
  sha256 "24260a619390617444c8504cf23d9b1af60f0ea2e89c4cfad8c677ee7da2a764"

  url "https://github.com/NeatMacApps/NeatPaste/releases/download/v#{version}/NeatPaste-#{version}.dmg"
  name "NeatPaste"
  desc "Tidy clipboard history: keyboard-first panel, local-only"
  homepage "https://github.com/NeatMacApps/NeatPaste"

  depends_on macos: :tahoe

  app "NeatPaste.app"

  zap trash: [
    "~/Library/Application Support/com.x0c.NeatPaste",
    "~/Library/Caches/com.x0c.NeatPaste",
    "~/Library/Preferences/com.x0c.NeatPaste.plist",
  ]
end
