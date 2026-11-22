cask "hyla" do
  version "3.23.2"
  sha256 arm:   "43b7c9116dc68972c0d3f38717a0240df93cfee716d56064077a9feb5d0d6137",
         intel: "1f14b10d7b1ef7080f4dcf21842669c9596373638861dd05e09152ac2d25b2c7"

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
