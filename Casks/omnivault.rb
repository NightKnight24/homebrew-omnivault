cask "omnivault" do
  version "2.0.0"
  sha256 "2a59b96be23c6da278632e50ff3e85767d4ad07f6b2b7530f065662582221351"

  url "https://github.com/NightKnight24/OmniVault/releases/download/v#{version}/OmniVault-v#{version}-macOS-arm64.zip"
  name "OmniVault"
  desc "ROM finder, 122k+ syncable metadata catalog, cloud & sequential download manager"
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
