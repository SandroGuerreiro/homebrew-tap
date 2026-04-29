cask "pronto" do
  version "0.10.0"
  sha256 "7de61dec2a748f530596438f5442bdd8405d52afe8044cb3820724b20c47d1cb"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.10.0/Pronto_0.10.0_aarch64.dmg"
  name "Pronto"
  desc "Native macOS menu bar app for monitoring GitHub Pull Requests"
  homepage "https://github.com/sandroguerreiro/pronto"

  depends_on macos: ">= :catalina"

  app "Pronto.app"

  postflight do
    system_command "/bin/sh",
                   args: ["-c", "/usr/bin/xattr -d com.apple.quarantine '#{appdir}/Pronto.app' 2>/dev/null || true"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.pronto.desktop",
    "~/Library/Caches/com.pronto.desktop",
    "~/Library/Preferences/com.pronto.desktop.plist",
  ]
end
