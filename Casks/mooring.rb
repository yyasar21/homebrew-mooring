cask "mooring" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "75f1a1e32688dccae65a5fc1b479b62d541153fb25f1e655daef3c26416c42db",
         intel: "e91c7175950dff4440b8440be5897d1f2fac0ba9a17ed227b2bcd1637dbdf777"

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
