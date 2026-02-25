cask "pronto" do
  version "0.4.0"
  sha256 "a03dfc0e6e6bfd6c1dda930ca127013b2796e00256a17b10414762a56928ccf8"

  url "https://github.com/SandroGuerreiro/pronto/releases/download/v#{version}/Pronto_#{version}_aarch64.dmg"
  name "Pronto"
  desc "macOS menu bar app for monitoring GitHub PR statuses"
  homepage "https://github.com/SandroGuerreiro/pronto"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Pronto.app"
end
