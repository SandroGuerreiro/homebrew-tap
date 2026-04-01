cask "pronto" do
  version "0.8.3"
  sha256 "a5d66e0dd1d33af86f5fb3e3686f296fd80d4caf1f787a38916d3df7b5febbb1"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.8.3/Pronto_0.8.3_aarch64.dmg"
  name "Pronto"
  desc "Native macOS menu bar app for monitoring GitHub Pull Requests"
  homepage "https://github.com/sandroguerreiro/pronto"

  app "Pronto.app"

  zap trash: [
    "~/Library/Application Support/com.pronto.desktop",
    "~/Library/Caches/com.pronto.desktop",
    "~/Library/Preferences/com.pronto.desktop.plist",
  ]
end
