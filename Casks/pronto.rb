cask "pronto" do
  version "0.6.2"
  sha256 "cc78d195cab111e0e53cd2e6271db3c129a321f323e7894b54f20bf544dcb6d6"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.2/Pronto_0.6.2_aarch64.dmg"
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
