cask "hyla" do
  version "3.20.0"
  sha256 arm:   "90dfb2b38d07d01f2a33872050e5daa0ca30b223dc36e1c9d516b3e66cc012ae",
         intel: "26b9813aced1b2e961d0abe35d40b31ac7a06ae211c038436edfcfd2c930d218"

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
