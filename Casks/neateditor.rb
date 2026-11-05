cask "neateditor" do
  version "1.0.28"
  sha256 "5c4ce0cfdd94ee583960ea6581d69351f274481679d4709a391fe613299d015e"

  url "https://github.com/NeatMacApps/NeatEditor/releases/download/v#{version}/NeatEditor-#{version}.dmg"
  name "NeatEditor"
  desc "Lightweight native plain-text editor"
  homepage "https://github.com/NeatMacApps/NeatEditor"

  auto_updates true
  depends_on macos: :tahoe

  app "NeatEditor.app"

  uninstall quit: "com.x0c.NeatEditor"
end
