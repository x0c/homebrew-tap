cask "neateditor" do
  version "1.0.31"
  sha256 "d5ade0d3ccfd150709233e63271ce65065f70fe3d3a1317fb0beeb526a5c10e1"

  url "https://github.com/NeatMacApps/NeatEditor/releases/download/v#{version}/NeatEditor-#{version}.dmg"
  name "NeatEditor"
  desc "Lightweight native plain-text editor"
  homepage "https://github.com/NeatMacApps/NeatEditor"

  auto_updates true
  depends_on macos: :tahoe

  app "NeatEditor.app"

  uninstall quit: "com.x0c.NeatEditor"
end
