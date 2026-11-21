cask "hyla" do
  version "3.21.1"
  sha256 arm:   "f1acdd5018320c278f5236e76887d28b7386d6c3e3d87aa78b51e8bf2ea2bae1",
         intel: "e9b58175921d42c198981499b9c146b7eea3352f5c911620f28f99f8d4de7bdf"

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
