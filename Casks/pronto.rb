cask "pronto" do
  version "0.6.83"
  sha256 "d9569f5d6edd4beba2139f37667976f0b8e6d02702a177b7c14365a0e553fd44"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.83/Pronto_0.6.83_aarch64.dmg"
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
