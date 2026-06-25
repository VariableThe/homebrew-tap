cask "papercache" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.3"
  sha256 arm:   "a949a211db7943cac003baccb325ad7867034aeda29d139bd03b98365ea7d018"

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
