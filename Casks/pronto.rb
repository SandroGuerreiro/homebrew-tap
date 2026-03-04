cask "pronto" do
  version "0.6.7"
  sha256 "3313a932cae2459094640a847db0ae914ca186568dcab615b74cc3cae37d4741"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.7/Pronto_0.6.7_aarch64.dmg"
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
