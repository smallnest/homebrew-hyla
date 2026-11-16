cask "hyla" do
  version "3.12.1"
  sha256 arm:   "877f1fd07b30ef42c89c90937a47a1cb7c63ddc582485c593bc245f69a02b744",
         intel: "36cd2ee5700e6c0fdf97b56378ab2b6f5121e2c8aa0362003b6ff8f4ea617cee"

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
