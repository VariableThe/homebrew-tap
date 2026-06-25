cask "papercache" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.3"
  sha256 arm:   "fe342d2348596971f3a9791bb0d0c6ecfe272847d0e30f85b8cc00742f066c7d"

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
