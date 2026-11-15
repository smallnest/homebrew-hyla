cask "hyla" do
  version "3.11.0"
  sha256 arm:   "0e385ea2d21bf368251386c9afff0ce12c4ad0742c88b92a1d8620e10ce88689",
         intel: "f0bcb4144bce89840df1522245567fe6dee475549536cfdd11c03cce2539cffa"

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
