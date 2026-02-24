cask "pronto" do
  version "0.2.1"
  sha256 "1f2e8d0dc7d6dd14b3d4eaa95ab78de08db6028df78dc70e815158c2a7233131"

  url "https://github.com/SandroGuerreiro/pronto/releases/download/v#{version}/Pronto_#{version}_aarch64.dmg"
  name "Pronto"
  desc "macOS menu bar app for monitoring GitHub PR statuses"
  homepage "https://github.com/SandroGuerreiro/pronto"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Pronto.app"
end
