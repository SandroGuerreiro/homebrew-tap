cask "pronto" do
  version "0.1.0"
  sha256 "b1d308ae57915b7850c4ab940fcfcbb09f25bb90e5a8129262bbd56104d0d3eb"

  url "https://github.com/SandroGuerreiro/pronto/releases/download/v0.1.01/Pronto_#{version}_aarch64.dmg"
  name "Pronto"
  desc "macOS menu bar app for monitoring GitHub PR statuses"
  homepage "https://github.com/SandroGuerreiro/pronto"

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Pronto.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Pronto.app"]
  end

  caveats <<~EOS
    Pronto is not code-signed. If macOS blocks it, run:
      xattr -cr /Applications/Pronto.app
  EOS
end
