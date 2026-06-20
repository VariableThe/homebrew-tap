cask "papercache" do
  arch arm: "arm64"

  version "0.1.19"
  sha256 arm:   "3af460efdeca66cd28e04a00e5a479ca449b395239be9d461c88fd93e468552b"

  url "https://github.com/VariableThe/PaperCache/releases/download/v#{version}/PaperCache-0.1.17-#{arch}-mac.zip"
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
