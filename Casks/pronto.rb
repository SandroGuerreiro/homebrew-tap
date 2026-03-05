cask "pronto" do
  version "0.6.86"
  sha256 "b0ad3c6ec49dfd2a2661268656ae6a1001523f8f2a77ad9b7e15c6c754fce618"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.86/Pronto_0.6.86_aarch64.dmg"
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
