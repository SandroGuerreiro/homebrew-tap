cask "pronto" do
  version "0.2.0"
  sha256 "7935ed7b4f67c74e8cbff2b2a5f7130b6f34736b20e9cc9770e8f91328dd3651"

  url "https://github.com/SandroGuerreiro/pronto/releases/download/v#{version}/Pronto_#{version}_aarch64.dmg"
  name "Pronto"
  desc "macOS menu bar app for monitoring GitHub PR statuses"
  homepage "https://github.com/SandroGuerreiro/pronto"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Pronto.app"
end
