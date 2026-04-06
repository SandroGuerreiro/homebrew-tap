cask "pronto" do
  version "0.9.0"
  sha256 "feb81bb77923265ff255519796603be4863e6fa4fa9905e4fce9397f74cfa21c"

  url "https://github.com/sandroguerreiro/pronto/releases/download/v0.9.0/Pronto_0.9.0_aarch64.dmg"
  name "Pronto"
  desc "Native macOS menu bar app for monitoring GitHub Pull Requests"
  homepage "https://github.com/sandroguerreiro/pronto"

  depends_on macos: ">= :catalina"

  app "Pronto.app"

  zap trash: [
    "~/Library/Application Support/com.pronto.desktop",
    "~/Library/Caches/com.pronto.desktop",
    "~/Library/Preferences/com.pronto.desktop.plist",
  ]
end
