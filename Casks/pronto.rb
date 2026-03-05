cask "pronto" do
  version "0.6.89"
  sha256 "df1e140a44917ba05c5303a4b0886e6e82d5f0ce416a48f8f01d4794c1d8f8eb"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.6.89/Pronto_0.6.89_aarch64.dmg"
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
