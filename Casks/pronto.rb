cask "pronto" do
  version "0.6.3"
  sha256 "c1e0fe320f9d3ffe652764c118edec3ea153ae99c5171865604e46b10e8e751f"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.3/Pronto_0.6.3_aarch64.dmg"
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
