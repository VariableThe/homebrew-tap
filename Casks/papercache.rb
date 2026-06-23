cask "papercache" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "30147818f114ada8d08bfbe3a5b8f94f3f70950b12a48d4d181373308f70019b"

  url "https://github.com/VariableThe/PaperCache/releases/download/v#{version}/PaperCache_#{version}_#{arch}.dmg"
  name "PaperCache"
  desc "Intelligent, minimalist markdown scratchpad"
  homepage "https://github.com/VariableThe/PaperCache"

  app "PaperCache.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/PaperCache.app"],
                   sudo: false
  end

  zap trash: [
    "~/.papercache",
    "~/Library/Application Support/PaperCache",
    "~/Library/Preferences/com.variablethe.papercache.plist",
    "~/Library/Saved Application State/com.variablethe.papercache.savedState"
  ]
end
