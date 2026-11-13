cask "neateditor" do
  version "1.0.33"
  sha256 "5a17050b7a49f169fe9a676c7e45328f52a807490ccbd3a769a400df0d63cd09"

  url "https://github.com/NeatMacApps/NeatEditor/releases/download/v#{version}/NeatEditor-#{version}.dmg"
  name "NeatEditor"
  desc "Lightweight native plain-text editor"
  homepage "https://github.com/NeatMacApps/NeatEditor"

  auto_updates true
  depends_on macos: :tahoe

  app "NeatEditor.app"

  uninstall quit: "com.x0c.NeatEditor"
end
