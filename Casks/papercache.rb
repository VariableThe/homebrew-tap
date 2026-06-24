cask "papercache" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.2"
  sha256 arm:   "292792eba6f680b42f8e3a9ffe552cba7ce49f3edf5ed737a227cc37582b088c"

  url "https://github.com/VariableThe/PaperCache/releases/download/v0.5.2/PaperCache_aarch64.app.tar.gz"
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
