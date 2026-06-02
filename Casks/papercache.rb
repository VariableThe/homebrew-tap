cask "papercache" do
  arch arm: "arm64"

  version "0.1.4"
  sha256 arm:   "adaf81da79fe9dbc1a7af732b4f3851ba04366d37ddf1f8c009457157538e1f3"

  url "https://github.com/VariableThe/PaperCache/releases/download/v#{version}/PaperCache-#{version}-#{arch}-mac.zip"
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
