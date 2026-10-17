cask "neatpaste" do
  version "1.0.13"
  sha256 "a239c727c389245cc28e354b5e3ecb6b1a92b3fc8cf88f256bc5edb7401ee039"

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
