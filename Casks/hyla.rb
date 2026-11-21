cask "hyla" do
  version "3.22.0"
  sha256 arm:   "3bd73e664ad9098589f251411cec7dfc146d33d1cbdc986615a4d4bc64a42f84",
         intel: "e7479410461258e23522a65fb30cab6d67ced46c3deab3b91e00d23eaf4a91e9"

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
