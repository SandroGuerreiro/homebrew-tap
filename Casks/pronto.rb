cask "pronto" do
  version "0.6.82"
  sha256 "ee4bab7b9231bc0ea56f07a007f84a1a4d8eb7c9fcaaede41459041b668e9f47"

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
