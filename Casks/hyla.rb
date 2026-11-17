cask "hyla" do
  version "3.15.0"
  sha256 arm:   "81fa71327c05f3d8eb41b2fc1ae20f68e7f8b7c174a44a09910e97bde34404de",
         intel: "3b71562b75c173beade19eccb4f9988f5a5873d81a02e5da554f23f60ee99db9"

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
