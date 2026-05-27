cask "vinyl" do
  version "1.1.1"
  sha256 "16997ba69527f2227018d848e24872f201376ffcaf063befd388343a5c4467b4"
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
