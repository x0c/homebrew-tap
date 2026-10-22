cask "neatpaste" do
  version "1.0.20"
  sha256 "0e0fd52566d69f505d92c5115740c08c5ee29ddecca9edc4c3df578c4ddbaa8e"

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
