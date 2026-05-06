cask "pronto" do
  version "0.11.0"
  sha256 "3aee18c9c8b2936768d1dbc974f5f9e081d3ef589e35585161e355a4c70f6c13"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.11.0/Pronto_0.11.0_aarch64.dmg"
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
