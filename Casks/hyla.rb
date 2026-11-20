cask "hyla" do
  version "3.19.0"
  sha256 arm:   "40fa778c061983420aab9d2640122d24056d26598afaf38decf3cbbd209a3196",
         intel: "f9944706a55ff6370c26752152279147d16ca0e2c649f640fb1a54fc401054e2"

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
