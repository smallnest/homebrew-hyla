cask "hyla" do
  version "3.16.0"
  sha256 arm:   "d9073a54e372cf8053a26378e97f279602b31c753455ed58c714a4c48fa300ae",
         intel: "30d25642c8a0dbef400388cfc2e02ef97592b4b2bc5f3bdaf6d68b8c6e2ae0fe"

  on_arm do
    url "https://github.com/smallnest/hyla/releases/download/v#{version}/hyla-#{version}-arm64.dmg"
  end

  on_intel do
    url "https://github.com/smallnest/hyla/releases/download/v#{version}/hyla-#{version}-amd64.dmg"
  end

  name "Hyla"
  desc "Terminal for coding agents"
  homepage "https://github.com/smallnest/hyla"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Hyla.app"

  zap trash: [
    "~/.config/hyla",
    "~/Library/Application Support/hyla",
  ]
end
