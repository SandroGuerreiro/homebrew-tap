cask "pronto" do
  version "0.1.0"
  sha256 "98d8347bc1394fdc926ca47d5c43e43d9956e90aa3f80c1fcce965da8e7b0387"

  url "https://github.com/SandroGuerreiro/pronto/releases/download/v#{version}/pronto_#{version}_aarch64.dmg"
  name "Pronto"
  desc "macOS menu bar app for monitoring GitHub PR statuses"
  homepage "https://github.com/SandroGuerreiro/pronto"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "pronto.app"
end
