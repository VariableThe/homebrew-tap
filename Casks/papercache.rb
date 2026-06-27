cask "papercache" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.5"
  sha256 arm:   "926862c10d01ba23bf41c34db22ab00efd7131fae47d1cae596d0150f005e2d9"

  url "https://github.com/VariableThe/PaperCache/releases/download/v0.5.5/PaperCache_aarch64.app.tar.gz"
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
