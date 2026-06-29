cask "papercache" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.6"
  sha256 arm:   "727aa88cfd105aa8ddc912bf2cb3535fd806a851cda94b29365d42e6c4f3b6fc"

  url "https://github.com/VariableThe/PaperCache/releases/download/v0.5.6/PaperCache_aarch64.app.tar.gz"
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
