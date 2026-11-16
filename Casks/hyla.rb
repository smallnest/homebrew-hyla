cask "hyla" do
  version "3.12.0"
  sha256 arm:   "79b61a1b8d326a918a51610f88fef50f0621892394afb583d7015a52683f16b1",
         intel: "0925912942bd9cb7451f0332cb975f9dcecc0e15503e3176e1e70bd3988262f7"

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
