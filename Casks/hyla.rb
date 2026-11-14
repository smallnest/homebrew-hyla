cask "hyla" do
  version "3.9.3"
  sha256 arm:   "796c01fe5f90f71eb3632a495199c64e465c9db26c6330d5c692e77254e41b1a",
         intel: "a0aef30d6ce70afce168d3961473ded532d3946123c4f0a91e010e93a3fe050c"

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
