cask "pronto" do
  version "0.6.82"
  sha256 "ad6b575f6eb8998e6a05bf37b8b177d6b4778a5e83accf452a8c182bfd5489f3"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.82/Pronto_0.6.82_aarch64.dmg"
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
