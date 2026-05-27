cask "vinyl" do
  version "1.1.0"
  sha256 "4120561a1b001eb57544c38abdbd5ad4dd02b82fef3228d7dcad1f210dd22a11"
  url "https://github.com/VariableThe/Vinyl/releases/download/v#{version}/Vinyl.zip"
  name "Vinyl"
  desc "Native, lightweight macOS menu bar app for synchronized music lyrics"
  homepage "https://github.com/VariableThe/Vinyl"

  app "Vinyl.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/Vinyl.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Caches/com.variablethe.Vinyl",
    "~/Library/Preferences/com.variablethe.Vinyl.plist",
  ]
end
