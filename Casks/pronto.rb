cask "pronto" do
  version "0.6.9"
  sha256 "8b13755a9db70b32a40f4a41199d64a2454913bb65992b9d5bb3f916499eb996"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.9/Pronto_0.6.9_aarch64.dmg"
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
