cask "hyla" do
  version "3.10.2"
  sha256 arm:   "0e73a51cd351ec1b9ef198478b84c49e181859d6160802eab078e7efbc1d1068",
         intel: "79e6a55c39f867f65027c455c356f261f6a502f48f6629ee967259204292f2e5"

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
