cask "hyla" do
  version "3.11.3"
  sha256 arm:   "ff79edc53c835df3e81046632267fd88568df647c408978839ba8d16bbd0cf5d",
         intel: "0e46b5ed11edd607f0426860f7bc971f623178c7aa9267d02510696637cf39c3"

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
