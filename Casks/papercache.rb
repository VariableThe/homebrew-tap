cask "papercache" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.3"
  sha256 arm:   "7dae92e7e03caacdf067ae252e19b8ed24653fd7901086f9724512ea32f64af1"

  url "https://github.com/VariableThe/PaperCache/releases/download/v0.5.3/PaperCache_aarch64.app.tar.gz"
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
