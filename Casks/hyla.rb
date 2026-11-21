cask "hyla" do
  version "3.21.0"
  sha256 arm:   "24de52592b262b562775c815a987c07f76f4352e0c2fc20572a56b76020e7b1a",
         intel: "77747746d961f2ac99f064e344703c915df05c22fb9058f4f414c8c442dabab1"

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
