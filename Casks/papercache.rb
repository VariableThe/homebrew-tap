cask "papercache" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.8"
  sha256 arm:   "4032f0cc67a3971508878fe419918a8ce08c67c20c5ca6047228a61947e5afce"

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
