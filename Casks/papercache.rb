cask "papercache" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "3c99dd27dd597053a10ae93d3629568c18198234685a38f01593e024efde10fb"

  url "https://github.com/VariableThe/PaperCache/releases/download/v#{version}/PaperCache_#{version}_#{arch}.dmg"
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
