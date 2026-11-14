cask "hyla" do
  version "3.9.1"
  sha256 arm:   "e3c1b2cb9d263380e64c9487eb36b4b3e55dc6afa582c5ca4ce46a20961dcef0",
         intel: "56db9e08faee136cf28629c0056a13a3695b181d0f2426c8406d5bbd48d3f7fb"

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
