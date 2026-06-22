cask "papercache" do
  arch arm: "arm64"

  version "0.4.0"
  sha256 arm:   "d587c9bd7f06526574ce0b89dac134fc0c73b12790a24ac024806c131e390d72"

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
