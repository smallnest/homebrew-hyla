cask "hyla" do
  version "3.28.1"
  sha256 arm:   "8c644b6d5bf3f22a7708725f3f22f8608b5fe40ecb7bcadfea5d406bca1e45d0",
         intel: "f77c662433fbcb33d900b8e83ca4600eba4046e277a7984a80b835b9d11389da"

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
