cask "omnivault" do
  version "1.0.0"
  sha256 "cb7894fd3a73ba82726326ba32a87cb200e6ce50c01a1c7594f096208f4042d2"

  url "https://github.com/NightKnight24/OmniVault/releases/download/v#{version}/OmniVault-v#{version}-macOS-arm64.zip"
  name "OmniVault"
  desc "Native macOS classic retro gaming preservation hub and catalog"
  homepage "https://github.com/NightKnight24/OmniVault"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "OmniVault.app"

  zap trash: [
    "~/Library/Application Support/OmniVault",
    "~/Library/Caches/com.omnivault.classicstore",
    "~/Library/Preferences/com.omnivault.classicstore.plist",
    "~/Library/Saved Application State/com.omnivault.classicstore.savedState",
  ]
end
