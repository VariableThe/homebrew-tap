cask "papercache" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.8"
  sha256 arm:   "cc51852600465ac90187c294dc4806ca67acc74fd8e5f5c905426d5cbe6f4fab"

  url "https://github.com/VariableThe/PaperCache/releases/download/v0.5.8/PaperCache_aarch64.app.tar.gz"
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
