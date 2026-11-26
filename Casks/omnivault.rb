cask "omnivault" do
  version "2.1.3"
  sha256 "3dc899ad9cd26907911a645d77088678ea37d27b664cab2fc5e0100598869110"

  url "https://github.com/NightKnight24/OmniVault/releases/download/v#{version}/OmniVault-v#{version}-macOS-arm64.zip"
  name "OmniVault"
  desc "150+-system ROM finder, TheGamesDB metadata organizer, cloud & sequential download manager"
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
