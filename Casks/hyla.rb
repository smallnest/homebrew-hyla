cask "hyla" do
  version "3.12.3"
  sha256 arm:   "fd1aec8967c2a0a065033063c42ca0ad1d99a4ee7b70233cda1b5d401cfbe2d6",
         intel: "d8d4727aad29c08cd7db7649f57b1845bac8f0129840e1bc63e3f9cd1af93afe"

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
