cask "neateditor" do
  version "1.0.36"
  sha256 "5b22c3c36b839e9fbd0f554c9564b131ea36f9bef70739fc4a4a9abdbd9f85e0"

  url "https://github.com/NeatMacApps/NeatEditor/releases/download/v#{version}/NeatEditor-#{version}.dmg"
  name "NeatEditor"
  desc "Lightweight native plain-text editor"
  homepage "https://github.com/NeatMacApps/NeatEditor"

  auto_updates true
  depends_on macos: :tahoe

  app "NeatEditor.app"

  uninstall quit: "com.x0c.NeatEditor"
end
