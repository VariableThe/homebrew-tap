cask "papercache" do
  arch arm: "arm64"

  version "0.1.18"
  sha256 arm:   "58cfe01c870d76ae10c52fd337b82244c6f16d844cbe6cd5462ed18fe98b75de"

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
