cask "vinyl" do
  version "1.0.2"
  sha256 "9b9eef231a98ed3dca092610aa1b13003eaacf95507f2f9774e978f58abaeb06"

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
