cask "scopy" do
  version "0.44.fix26"
  sha256 "ef6b10d13ad8ba2c1eb2755939cc8b70829748a432a799a7ca8322e10b559675"

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
