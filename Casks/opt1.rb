cask "opt1" do
  version "1.0.7"
  sha256 "e6c4f13d8d2b3b48be17fab4b18c5548135942f4e361ef7df2b1a954ee4849bc"

  url "https://github.com/JAHealey1/Opt1/releases/download/v#{version}/Opt1-#{version}.dmg"
  name "Opt1"
  desc "Free macOS helper for RuneScape clue scrolls"
  homepage "https://github.com/JAHealey1/Opt1"

  livecheck do
    url "https://github.com/JAHealey1/Opt1/releases/latest"
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
