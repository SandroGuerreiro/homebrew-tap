cask "pronto" do
  version "0.6.1"
  sha256 "e9ad7752a647dfcdf86ba867093851601523dca57291ae1480c0d864261b5434"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.1/Pronto_0.6.1_aarch64.dmg"
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
