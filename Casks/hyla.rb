cask "hyla" do
  version "3.10.3"
  sha256 arm:   "3319ed8d5398ff4def4ed332d9343d8461fa20732aeb1852c678b2e48bb484c0",
         intel: "4ad265865fa6619a696c9588ea5148ce2e98fe66713a4f04ea4267f57b7cc7df"

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
