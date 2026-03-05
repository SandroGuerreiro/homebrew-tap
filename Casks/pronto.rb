cask "pronto" do
  version "0.6.85"
  sha256 "9d8ab075c5e8ef9360cb462ccedc20eb3f6a95c9862deba522f46d88fbbf5f58"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.85/Pronto_0.6.85_aarch64.dmg"
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
