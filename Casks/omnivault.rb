cask "omnivault" do
  version "1.0.2"
  sha256 "117d445840e9edb149fc2b23be56d6079a8b2ace9dff04d99316547fde1cb6d1"

  url "https://github.com/NightKnight24/OmniVault/releases/download/v#{version}/OmniVault-v#{version}-macOS-arm64.zip"
  name "OmniVault"
  desc "Classic retro gaming preservation hub and 3D storefront"
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
