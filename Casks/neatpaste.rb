cask "neatpaste" do
  version "1.0.10"
  sha256 "22066d7b5b59eef12f0e7c853ad2b1da1fd3916c45ec11968ddd65b3aeaf4c67"

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
