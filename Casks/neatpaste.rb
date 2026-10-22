cask "neatpaste" do
  version "1.0.19"
  sha256 "b53d29f9c6b1b364c4e2d3337841b50b28703946dc164a1684392a1b36bb67d5"

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
