cask "pronto" do
  version "0.6.81"
  sha256 "9670fb7a5a255251bb0cb6d9598b0ccd1a73a5b01de3df89f2b536ab20e836eb"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.81/Pronto_0.6.81_aarch64.dmg"
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
