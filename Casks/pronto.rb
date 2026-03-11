cask "pronto" do
  version "0.7.0"
  sha256 "1732ccd95963aba0fcc0775ec89a2a44983429c5d8ac26e5daf60df6d423ffb9"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.7.0/Pronto_0.7.0_aarch64.dmg"
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
