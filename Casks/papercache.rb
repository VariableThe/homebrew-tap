cask "papercache" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.2"
  sha256 arm:   "be21506ce03a4138c5df3c3e8c9022983617290fec79ed09273d8bada145242e"

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
