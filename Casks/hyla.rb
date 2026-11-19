cask "hyla" do
  version "3.17.7"
  sha256 arm:   "b2280535899629e572686c481ffd4af4ac253fded46b28722785551d123f2164",
         intel: "a3b6ded83cb04a03de77a6f40e9c8e7ef7e55122b48ce038f2665ad185d89694"

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
