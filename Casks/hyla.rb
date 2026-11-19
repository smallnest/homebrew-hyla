cask "hyla" do
  version "3.18.0"
  sha256 arm:   "29af3965f7fba76687f897c8e6bebbca22d21989244ef023bd718c52c81d3c49",
         intel: "3d19ba091e50c0bc1f172a99d88803c79a1000cea399d6673491e59aa4aea546"

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
