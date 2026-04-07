cask "pronto" do
  version "0.9.1"
  sha256 "cbdaf1d6ade7d1d79e477f22d190747e4f04f557f645434c14d7fa255012a28f"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.9.1/Pronto_0.9.1_aarch64.dmg"
  name "Pronto"
  desc "Native macOS menu bar app for monitoring GitHub Pull Requests"
  homepage "https://github.com/sandroguerreiro/pronto"

  depends_on macos: ">= :catalina"

  app "Pronto.app"

  zap trash: [
    "~/Library/Application Support/com.pronto.desktop",
    "~/Library/Caches/com.pronto.desktop",
    "~/Library/Preferences/com.pronto.desktop.plist",
  ]
end
