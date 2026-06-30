cask "papercache" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.8"
  sha256 arm:   "1617fc842d9da19c2887047af99876308457ba9441cffb6b8d2801f8128b9abe"

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
