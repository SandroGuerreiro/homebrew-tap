cask "pronto" do
  version "0.4.1"
  sha256 "a095fb493936c6eb6871e44e3f672f82af58d655bedc9b2af76a1b38185de83a"

  url "https://github.com/SandroGuerreiro/pronto/releases/download/v#{version}/Pronto_#{version}_aarch64.dmg"
  name "Pronto"
  desc "macOS menu bar app for monitoring GitHub PR statuses"
  homepage "https://github.com/SandroGuerreiro/pronto"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Pronto.app"
end
