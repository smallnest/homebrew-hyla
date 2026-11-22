cask "hyla" do
  version "3.23.1"
  sha256 arm:   "d7a10f0984d97d0154b2ecf45c35214ac51ab7106026ad1362e767c471f9c831",
         intel: "7ca896aa5ffb448c8323f273fd0ba030bc23816a2b296556b82e166b06977276"

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
