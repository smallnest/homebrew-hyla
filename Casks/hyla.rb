cask "hyla" do
  version "3.13.0"
  sha256 arm:   "b7e106cdf259b19b754da1b0d394c26d23ddecc9b61df0eebf8d761b5c8dc143",
         intel: "594d6826f9f590ad48e6eb4d9967807e1e46bb4044b879b08592292b338e79f6"

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
