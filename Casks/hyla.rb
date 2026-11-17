cask "hyla" do
  version "3.15.1"
  sha256 arm:   "76181772922ee5e54fa1e8336c06b3e7290081552ac4d720871142fa7b65aba8",
         intel: "f32ef0487dfe64f24314335864aeeafe65263cdfd9aa884af151ce735be7b363"

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
