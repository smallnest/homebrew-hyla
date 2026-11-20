cask "hyla" do
  version "3.19.1"
  sha256 arm:   "79dcb6877cd06be5b7803fb229344918e6d240653ace11e99bfa0c3752bb71a7",
         intel: "ec6f763082fa8445374ae5013094150ed1ac30b90ecbf1c1f89ba9cb1cfc3167"

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
