cask "pronto" do
  version "0.8.0"
  sha256 "12a5a3e714b8c16b8dbcddd52c4cdc8a337510e4e7b45833e4c4b97d708d3856"

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
