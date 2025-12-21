cask "scopy" do
  version "0.50.fix12"
  sha256 "2fe2eaf788f0bdda1056ab578d0418d68e2f584c5aa69b4ace488f2ed2fab37c"

  url "https://github.com/Suehn/Scopy/releases/download/v#{version}/Scopy-#{version}.dmg"
  name "Scopy"
  desc "Native macOS clipboard manager with unlimited history"
  homepage "https://github.com/Suehn/Scopy"

  depends_on macos: ">= :sonoma"

  app "Scopy.app"

  caveats <<~EOS
    Scopy is not signed. On first launch:
    Right-click the app → Open → Open
  EOS

  zap trash: [
    "~/Library/Application Support/Scopy",
    "~/Library/Preferences/com.scopy.app.plist",
  ]
end
