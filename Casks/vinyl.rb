cask "vinyl" do
  version "1.2.4"
  sha256 "65c462b3152fc9e6cefb7d74bcc013f9b4f12248302e8bc68d01d11ede9a0bcc"
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
