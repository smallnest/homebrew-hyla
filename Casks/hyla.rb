cask "hyla" do
  version "3.25.1"
  sha256 arm:   "c6d437c5cc162fa68440cc3bc6d84858e8175f5f83658c0b0ebffeaca30130c5",
         intel: "b1e94ad5526618307276f005282d1b529cf4273c42be250bbcf3b6b20edb625e"

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
