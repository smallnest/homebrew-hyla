cask "hyla" do
  version "3.17.2"
  sha256 arm:   "d82c2021f30dc3560282f2fa99e9e6d5f4ece1f319b5f608a77ad71b98d207dc",
         intel: "d52d3c8650e9aca3fb5e2b1f4c4fa4c74626cf43e8e404fc55676ea2fde36070"

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
