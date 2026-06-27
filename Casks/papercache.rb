cask "papercache" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.5"
  sha256 arm:   "a8926d3fbbd214847841b9415e2bda80c3b8e0c5ca00333a2e69e608b052a15d"

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
