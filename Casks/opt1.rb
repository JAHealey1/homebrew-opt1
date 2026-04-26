cask "opt1" do
  version "1.0.0"
  sha256 "29b988f16cf93268ad418443b9a815d81dd1471dcd903ad9446e25a6d40ba327"

  url "https://github.com/JAHealey1/Opt1-Releases/releases/download/v#{version}/Opt1-#{version}.dmg"
  name "Opt1"
  desc "Free macOS helper for RuneScape clue scrolls"
  homepage "https://github.com/JAHealey1/Opt1-Releases"

  livecheck do
    url "https://github.com/JAHealey1/Opt1-Releases/releases/latest"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Opt1.app"

  zap trash: [
    "~/Library/Application Support/Opt1",
    "~/Library/Caches/com.jacobhealey.opt1",
    "~/Library/Caches/com.jacobhealey.opt1.ShipIt",
    "~/Library/HTTPStorages/com.jacobhealey.opt1",
    "~/Library/Logs/Opt1",
    "~/Library/Preferences/com.jacobhealey.opt1.plist",
    "~/Library/Saved Application State/com.jacobhealey.opt1.savedState",
  ]
end
