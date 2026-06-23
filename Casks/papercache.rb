cask "papercache" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "6ec4f190565097e69ce2a37ade5663ff7a4ad8ab49e1fb4482b5d0c5f68be10d"

  url "https://github.com/VariableThe/PaperCache/releases/download/v0.5.1/PaperCache_aarch64.app.tar.gz"
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
