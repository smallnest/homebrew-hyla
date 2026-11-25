cask "hyla" do
  version "3.24.1"
  sha256 arm:   "0e2cbea70f8fe9dee1095cd18d6c00c5600e4aef02dff817f61ea1633171d043",
         intel: "53b684a72ac0e38ff4c8c8a403a5dbed951d09bfbcb2007b69daaaa5cdfca033"

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
