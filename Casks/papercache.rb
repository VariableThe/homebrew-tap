cask "papercache" do
  arch arm: "arm64"

  version "0.0.0"
  sha256 arm:   "990c3fe5f986caa7a3ed9546d16a9b7fb96541b6c96300b3b9a01a4b650dfcee"

  url "https://github.com/VariableThe/PaperCache/releases/download/v#{version}/PaperCache-#{version}-#{arch}-mac.zip"
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
