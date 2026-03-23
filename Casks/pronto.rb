cask "pronto" do
  version "0.8.2"
  sha256 "adc30e11b51b959da40b8cb232d6b71a34ff83816290d851538b447a475c3fb1"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.8.2/Pronto_0.8.2_aarch64.dmg"
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
