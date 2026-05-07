cask "pronto" do
  version "0.11.1"
  sha256 "4621fd1cb384aaf88db8746e914ed8ab25161c4858aea8b4ecbf4d0fda307514"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.11.1/Pronto_0.11.1_aarch64.dmg"
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
