cask "pronto" do
  version "0.6.88"
  sha256 "11ca74454da09f574f0727fc5d78da82301b44ee53a6a9375b5bdec95f9e11ac"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.88/Pronto_0.6.88_aarch64.dmg"
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
