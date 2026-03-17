cask "pronto" do
  version "0.8.0"
  sha256 "c822797b6659a09ea30973dcf7463815d0566a9a5793fbbb9b620bd6e9b049b5"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.8.0/Pronto_0.8.0_aarch64.dmg"
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
