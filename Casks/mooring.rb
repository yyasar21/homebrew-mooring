cask "mooring" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "b6219a18e3fb5a8097df53d043a2878cbb1919b16e93eb6379a3154467d4ee0f",
         intel: "6408dccea21f7ade268f6a86be4f4228ab4c03005d399bc980bc594c76436c32"

  url "https://github.com/yyasar21/Mooring/releases/download/v#{version}/Mooring_#{version}_#{arch}.dmg",
      verified: "github.com/yyasar21/Mooring/"
  name "Mooring"
  desc "Security-first remote access manager for SSH, RDP and VNC"
  homepage "https://github.com/yyasar21/Mooring"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: ">= :big_sur"

  app "Mooring.app"

  zap trash: [
    "~/Library/Application Support/io.github.yyasar21.mooring",
    "~/Library/Caches/io.github.yyasar21.mooring",
    "~/Library/Logs/io.github.yyasar21.mooring",
    "~/Library/Preferences/io.github.yyasar21.mooring.plist",
    "~/Library/Saved Application State/io.github.yyasar21.mooring.savedState",
    "~/Library/WebKit/io.github.yyasar21.mooring",
  ]
end
