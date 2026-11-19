cask "hyla" do
  version "3.17.6"
  sha256 arm:   "61d2ffb89a28af1f2cc24635914a7b4ed74cd94cb027b3de0bcf15c3900898c6",
         intel: "188a394b0ba40bc926d85157d19705a5dd8a6cda78f3d1c50e3f715a9cf586cd"

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
