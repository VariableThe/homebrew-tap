cask "papercache" do
  arch arm: "arm64"

  version "0.1.7"
  sha256 arm:   "6270f5aa4a348fda29ee6a7563d17281554e4ceec0c25521605e2324e90c7b68"

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
