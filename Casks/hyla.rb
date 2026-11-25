cask "hyla" do
  version "3.24.0"
  sha256 arm:   "1294ac6d555234d41fa2936d3ff4b8a7d4db5e7f9c020e1dab52ca8b7fa976af",
         intel: "b48fa989b30e4ccfa1b6df96a66a09a3edb659046c5c6082e50555967a2d509c"

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
