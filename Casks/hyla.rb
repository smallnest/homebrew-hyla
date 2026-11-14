cask "hyla" do
  version "3.10.0"
  sha256 arm:   "f2387415268540a74fb664ab018b4a66a753f5eb4927ef77da88b66c78d88a57",
         intel: "d76a2c3d5534b0055c9ac451119f4232f1f8d0296706dfe4cdb6e13e1f81602d"

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
