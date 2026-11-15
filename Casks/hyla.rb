cask "hyla" do
  version "3.11.1"
  sha256 arm:   "2ea0e742c437bd7a7a70a3739298d7dde742df5c1c4e4987e2ef1dc25fc4b722",
         intel: "8f7f6ebd35e1944726a0a126e7390e04208183a4572d95f487ba6e0c979e1518"

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
