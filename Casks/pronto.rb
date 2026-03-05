cask "pronto" do
  version "0.6.82"
  sha256 "87286c8fceadcbc0dbbfa8185bbf13ea409e9b017ef31d9c94d3f53deb7a65fe"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.82/Pronto_0.6.82_aarch64.dmg"
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
