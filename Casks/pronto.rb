cask "pronto" do
  version "0.6.95"
  sha256 "ea8eecc000916e0fe12a694b40ce88ac90a019d6cee5e6878f80e0fb97b8b815"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.95/Pronto_0.6.95_aarch64.dmg"
  name "Pronto"
  desc "Native macOS menu bar app for monitoring GitHub Pull Requests"
  homepage "https://github.com/sandroguerreiro/pronto"

  app "Pronto.app"

  quarantine false

  zap trash: [
    "~/Library/Application Support/com.pronto.desktop",
    "~/Library/Caches/com.pronto.desktop",
    "~/Library/Preferences/com.pronto.desktop.plist",
  ]
end
