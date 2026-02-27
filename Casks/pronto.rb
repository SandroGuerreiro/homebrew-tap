cask "pronto" do
  version "0.5.1"
  sha256 "f49681b5845db76a487faeec55ef61a60e73ef4bf29f9f7a6d120dc8d3943968"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.5.1/Pronto_0.5.1_aarch64.dmg"
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
