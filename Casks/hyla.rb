cask "hyla" do
  version "3.26.1"
  sha256 arm:   "4cacbd90459920edfab6fb9b3bfb94995c343106739e9d290ba27d096a41df9c",
         intel: "e339a6c68299471440da94162b1fdc816e5ede7c94ab8f4abeedb762ac5800c4"

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
