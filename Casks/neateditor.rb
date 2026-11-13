cask "neateditor" do
  version "1.0.34"
  sha256 "b6148011f5e8fdd1af37cf19f6683678319562f42c3f80a25ab8f3d4821b8bf9"

  url "https://github.com/NeatMacApps/NeatEditor/releases/download/v#{version}/NeatEditor-#{version}.dmg"
  name "NeatEditor"
  desc "Lightweight native plain-text editor"
  homepage "https://github.com/NeatMacApps/NeatEditor"

  auto_updates true
  depends_on macos: :tahoe

  app "NeatEditor.app"

  uninstall quit: "com.x0c.NeatEditor"
end
