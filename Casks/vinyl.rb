cask "vinyl" do
  version "1.2.7"
  sha256 "15b10c2494a4dfd9d1e58ddb95e5823d91b1b856a514984bfd87c971ea974939"
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
