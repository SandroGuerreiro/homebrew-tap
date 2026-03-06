cask "pronto" do
  version "0.6.92"
  sha256 "e4cc7fe419af4d016a1d1a187ce5d7b7d79ef9afdfe70a68a5269fa5a29de54e"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.92/Pronto_0.6.92_aarch64.dmg"
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
