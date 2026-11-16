cask "hyla" do
  version "3.14.0"
  sha256 arm:   "dcb88181bc79f16df56638d4306b1641d32165cd1aedf71e6385407caee2e054",
         intel: "bc00fb8c25323356453f80621d73622c85327a92b7bfedd5e84a4397b6782ca6"

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
