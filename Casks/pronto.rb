cask "pronto" do
  version "0.8.1"
  sha256 "17a9e0f3c7e027b6df2dc76b6dc47a0d3b134914836b01e2f4d8656169956165"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.8.1/Pronto_0.8.1_aarch64.dmg"
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
