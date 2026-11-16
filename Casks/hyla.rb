cask "hyla" do
  version "3.12.4"
  sha256 arm:   "7dfdb43f0f272b52eaf18980aa6cde708298bb6f1371d4e70df815ebf8e1e58a",
         intel: "ffd383a68bf6424a03833f8c6599a13db6d1d5ee10fe4a9ee4c161ca54f0fe32"

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
