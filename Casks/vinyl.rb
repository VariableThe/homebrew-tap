cask "vinyl" do
  version "1.1.1"
  sha256 "d6c4f52d3ade23b204f8a73f8e9d7e41bcd8518aa6f002f780eb79f2ee8f8f08"
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
