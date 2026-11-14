cask "hyla" do
  version "3.9.2"
  sha256 arm:   "8c9f5d2bef343e28fd90b682a5a12f5e5f5e9e4b35c587e8036be8448abc5e8c",
         intel: "39152aae6fb51ac86e7be0ff239bb07fa7c3d460e196b2f5f4be8be6839e2bae"

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
