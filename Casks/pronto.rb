cask "pronto" do
  version "0.5.0"
  sha256 "27d73df0875b4273901ec95b389788ec9a4c44a733f6196fea286b822577b40e"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.5.0/Pronto_0.5.0_aarch64.dmg"
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
