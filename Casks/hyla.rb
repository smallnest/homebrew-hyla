cask "hyla" do
  version "3.28.0"
  sha256 arm:   "7fad01cf03f271e7bc49ba68aada6282409824d0d3559fd4760238a013b6a60f",
         intel: "a72e2fc0400a4d887533cc899b04e79c3dd8973e3f5392d04fa1b7582e9cb509"

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
