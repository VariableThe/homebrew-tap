cask "papercache" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.7"
  sha256 arm:   "ce91487d0fa6b7cc75e2a601e33a7ccc4d8ec9c9e6ac47f91c0d8acba0e0db90"

  url "https://github.com/VariableThe/PaperCache/releases/download/v0.5.7/PaperCache_aarch64.app.tar.gz"
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
