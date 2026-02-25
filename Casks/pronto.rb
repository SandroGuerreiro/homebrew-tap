cask "pronto" do
  version "0.4.2"
  sha256 "2a501be214244d6d337d650c35efa768a7e91e6ec213198e31e3ee8b11f5b005"

  url "https://github.com/SandroGuerreiro/pronto/releases/download/v#{version}/Pronto_#{version}_aarch64.dmg"
  name "Pronto"
  desc "macOS menu bar app for monitoring GitHub PR statuses"
  homepage "https://github.com/SandroGuerreiro/pronto"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Pronto.app"
end
