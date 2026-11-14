cask "hyla" do
  version "3.10.1"
  sha256 arm:   "620c2b9f880d17f05b6921d5ed45c0ac3efb3c2ee8a9a58018ff634dfd1d5b11",
         intel: "35cfc75db4021aef3d53a3f3b6c1a63688c721bf5bf78484fd88b36d605d9ab0"

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
