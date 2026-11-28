cask "hyla" do
  version "3.27.0"
  sha256 arm:   "e102aaac4f10b676dbfc87e826c8355889c1493ae8980d2600f04f1adcc10cf8",
         intel: "cfe42098c06eb47ad410c56f756992bb94dfcaf7ade793d219bdbeb0e6e3e791"

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
