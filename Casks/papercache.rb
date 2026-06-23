cask "papercache" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "f0476a49ec8cd77acdf3d568984508ef1fe1c58e48aa3b1bd4ac1365208a8850"

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
