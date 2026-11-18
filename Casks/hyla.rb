cask "hyla" do
  version "3.17.5"
  sha256 arm:   "0b45a4a9c89e180ec380554bf3f6683071832a81363bb3a2f5212b1390f9d78e",
         intel: "9cbd505b0210e2caa1089c41c692b5b9aaba1bef0717771d889bb8806f5dcc17"

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
