cask "pronto" do
  version "0.6.93"
  sha256 "89a55cbd5c19d658ac39d0c0ac9bf68889a829a58b3061893a67108bebca1c34"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.93/Pronto_0.6.93_aarch64.dmg"
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
