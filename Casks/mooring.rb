cask "mooring" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "098c1428d44aa267d0b95dc47b1c8274acf3bad3affb7c529cada2ac6db1c2cb",
         intel: "bda73111b22172fc08e6ab5d0dcd9fb255a36c05cd009db6577672dd1400cc61"

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
