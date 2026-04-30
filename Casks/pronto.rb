cask "pronto" do
  version "0.10.1"
  sha256 "c9b955f5e978f0e5865498abfd67378ace7b57a33499e07a1827d9c22de19d92"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.10.1/Pronto_0.10.1_aarch64.dmg"
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
