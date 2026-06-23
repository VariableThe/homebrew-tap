cask "papercache" do
  arch arm: "arm64"

  version "0.5.0"
  sha256 arm:   "0023e87fd4a52442fc4f2ce96718d9f2187f4b19495cb0d301c1bfee1b602e30"

  url "https://github.com/VariableThe/PaperCache/releases/download/v#{version}/PaperCache-#{version}-#{arch}-mac.dmg"
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
