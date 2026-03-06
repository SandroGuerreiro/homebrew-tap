cask "pronto" do
  version "0.6.94"
  sha256 "ab9c32a07419f30c83f027935df06c6569ddd5ec97b9e0599ce4d2e317c8a29c"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.94/Pronto_0.6.94_aarch64.dmg"
  name "Pronto"
  desc "Native macOS menu bar app for monitoring GitHub Pull Requests"
  homepage "https://github.com/sandroguerreiro/pronto"

  app "Pronto.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-d", "com.apple.quarantine", "#{appdir}/Pronto.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.pronto.desktop",
    "~/Library/Caches/com.pronto.desktop",
    "~/Library/Preferences/com.pronto.desktop.plist",
  ]
end
