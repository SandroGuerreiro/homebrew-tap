cask "pronto" do
  version "0.6.8"
  sha256 "9971c7a388b6565170223579ced77045777466c5f69713c67ccf7f8fa6439554"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.8/Pronto_0.6.8_aarch64.dmg"
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
