cask "hyla" do
  version "3.23.0"
  sha256 arm:   "f154d7efdd33ac5087c57e5161c56173a599a0b83cf54bf59038b641dc8d415b",
         intel: "6c3dc2665296484afc77f96dc98ffa6cc1cf7a4039ac4db1dc526165cfd8deee"

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
