cask "vinyl" do
  version "1.0.1"
  sha256 "5a6cb455b673f8427608fadac140f9c8a8f0781d4603c28462ff44676fe39211"

  url "https://github.com/VariableThe/Vinyl/releases/download/Vinyl/Vinyl.zip"
  name "Vinyl"
  desc "Native, lightweight macOS menu bar app for synchronized music lyrics"
  homepage "https://github.com/VariableThe/Vinyl"

  app "Vinyl.app"

  zap trash: [
    "~/Library/Caches/com.variablethe.Vinyl",
    "~/Library/Preferences/com.variablethe.Vinyl.plist",
  ]
end
