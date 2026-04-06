cask "pronto" do
  version "0.9.0"
  sha256 "80bc8d67523360392c2c2784d778e8e3d42f2a73cd5086ce94f3f91f3daa4396"

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
