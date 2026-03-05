cask "pronto" do
  version "0.6.87"
  sha256 "482294bba9e161433ac09c6391b337cd4bd802f00ee50308a48d036065cc0714"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.87/Pronto_0.6.87_aarch64.dmg"
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
