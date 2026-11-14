cask "hyla" do
  version "3.7.9"
  sha256 arm:   "275638b631acd8c0ddd6d5c43520aef8ddf16d0b98687fb030755098566866ae",
         intel: "0065a4f4004b2130d53fee8da515101b7ac30f48fd78c508407a2b585592966a"

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
