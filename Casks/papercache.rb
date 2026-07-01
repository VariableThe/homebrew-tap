cask "papercache" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.9"
  sha256 arm:   "b6f4b37aa729f70dbb8c2adc9144ec7c0c6643b941fbdca6777dbb883f19c86a"

  url "https://github.com/VariableThe/PaperCache/releases/download/v0.5.9/PaperCache_aarch64.app.tar.gz"
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
